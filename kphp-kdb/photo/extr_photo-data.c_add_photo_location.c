
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_add_photo_location {int type; int photo; int orig_album_id; int orig_owner_id; int server_id2; int server_id; int photo_id; } ;


 int LEV_PHOTO_ADD_PHOTO_LOCATION ;
 int mode ;
 int user_add_photo_location (int *,int ,int,int ,int ,int ,int ,int ) ;

int add_photo_location (user *u, struct lev_photo_add_photo_location *E, int size) {
  int original = E->type - (mode << 16) - LEV_PHOTO_ADD_PHOTO_LOCATION;
  return user_add_photo_location (u, E->photo_id, original >> 10, E->server_id, E->server_id2, E->orig_owner_id, E->orig_album_id, E->photo);
}
