FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

   after(:build) do |item|
     item.image.attach(io: File.open('public/images/008.jpg'), filename: '008.jpg')
   end

  end
end