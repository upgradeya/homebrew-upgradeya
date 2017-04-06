class Decompose < Formula
  desc "Templating framework to help developers easily create and switch environments"
  homepage "https://github.com/dmp1ce/decompose"
  url "https://github.com/dmp1ce/decompose.git", :tag => "v0.18.1", :revision => "691e7cd09bd7eefbc3cca0e2e628e1704594b860"
  head "https://github.com/sstephenson/bats.git"

  bottle :unneeded
  depends_on "coreutils"

  def install
    # TODO: use txt2man to generate man file
    share.install "decompose"
    share.install "decompose-functions"
    (share/"completion").install "completion/decompose-bash-completion"
    (share/"completion").install "completion/decompose-bash-completion-functions"
    (share/"mo").install "mo/mo"

    bin.install_symlink share/"decompose"
    bash_completion.install_symlink share/"completion/decompose-bash-completion"
  end

  test do
    system "decompose", "--version"
  end
end
