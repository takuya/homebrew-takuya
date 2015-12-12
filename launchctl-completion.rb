class LaunchctlCompletion < Formula
  desc "Bash completion for Launchctl"
  homepage ""
  url "https://github.com/bobthecow/launchctl-completion",
    :revision => "f83bfbaa569d16f4951bae16aebff64fa498dfc7"

  head "https://github.com/bobthecow/launchctl-completion.git"

  bottle :unneeded

  def install
    bash_completion.install "completion-launchctl" => "launchctl"
  end

  test do
    assert_match "-F __bundle",
      shell_output("source #{bash_completion}/bundler && complete -p bundle")
  end
end
