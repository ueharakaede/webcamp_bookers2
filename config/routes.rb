Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get "/home/about" => "homes#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :homes, only: [:new, :create, :sho]
  resources :books
  resources :users

end
