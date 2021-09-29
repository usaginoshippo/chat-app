Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
resources :users, only: [:update, :edit]
resources :rooms, only: [:new, :create]
end
