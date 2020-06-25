class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian mexican] }
  has_many :reviews, dependent: :destroy
end
