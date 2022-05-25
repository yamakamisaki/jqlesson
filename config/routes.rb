Rails.application.routes.draw do

  root to: "items#index"
  resources :items do
    resources :comments, only: [:create, :destroy]
  end

end
