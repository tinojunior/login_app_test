class NewsModel {
  int userId;
  String firstName; //taken from the map
  String lastName;
  String caption;
  String photoId;
  Map<String, dynamic> user;

  NewsModel({
    this.userId,
    this.caption,
    this.photoId,
    this.user,
    this.lastName,
    this.firstName,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    caption = json['caption'] as String;
    userId = json['userId'] as int;
    photoId = json['photoId'] as String;
    user = json['user'] as Map;
    firstName = user['firstName'] as String;
    lastName = user['lastName'] as String;
  }
}
