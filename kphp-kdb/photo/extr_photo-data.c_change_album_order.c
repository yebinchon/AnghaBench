
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_change_album_order {int type; int album_id_near; int album_id; } ;


 int LEV_PHOTO_CHANGE_ALBUM_ORDER ;
 int mode ;
 int user_change_album_order (int *,int ,int ,int) ;

int change_album_order (user *u, struct lev_photo_change_album_order *E, int size) {
  return user_change_album_order (u, E->album_id, E->album_id_near, E->type - (mode << 16) - LEV_PHOTO_CHANGE_ALBUM_ORDER);
}
