class Goscrape < Formula
  desc "Goscrape - A web scraping tool"
  homepage "https://github.com/cornelk/goscrape"
  url "https://github.com/cornelk/goscrape/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "70b123af3f7867a99ed539658a6ba66ef4960e077fff97e60906a30ea4611a84"
  license "MIT"

  depends_on "go" => :build

  def install
    # Build the binary
    system "go", "build", "-o", bin/"goscrape"
  end

  test do
    # Test the installation
    output = shell_output("#{bin}/goscrape --version")
    assert_match /^Version:.+built.+go/, output
  end
end
