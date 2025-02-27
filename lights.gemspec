# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lights/version'
require 'date'

Gem::Specification.new do |s|
  s.name          = 'lights'
  s.version       = LightsConst::VERSION
  s.authors       = ["Brady Turner"]
  s.email         = 'bradyaturner@gmail.com'
  s.description   = "Client library and CLI for controlling Philips Hue lights."
  s.summary       = "lights"
  s.homepage      = 'http://rubygems.org/gems/lights'
  s.license       = 'MIT'
  s.date          = Date.today.to_s

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency "simpletable", "~> 0.3.2"

  s.add_development_dependency "bundler", "~> 2"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 3"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
end
