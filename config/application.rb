require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsGirlsTemplateApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings needed for gitpod.io
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.action_dispatch.default_headers = {
        'X-Frame-Options' => 'ALLOWALL'
    }
  end
end
