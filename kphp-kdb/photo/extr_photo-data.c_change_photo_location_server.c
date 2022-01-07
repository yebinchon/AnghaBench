
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_change_photo_location_server {int type; int server_id; int photo_id; } ;


 int LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER ;
 int mode ;
 int user_change_photo_location_server (int *,int ,int,int,int ) ;

int change_photo_location_server (user *u, struct lev_photo_change_photo_location_server *E, int size) {
  int original_server_num = E->type - (mode << 16) - LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER;
  return user_change_photo_location_server (u, E->photo_id, original_server_num >> 1, original_server_num & 1, E->server_id);
}
