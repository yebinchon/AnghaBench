
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_del_photo_location {int type; int photo_id; } ;


 int LEV_PHOTO_DEL_PHOTO_LOCATION ;
 int mode ;
 int user_del_photo_location (int *,int ,int) ;

int del_photo_location (user *u, struct lev_photo_del_photo_location *E, int size) {
  int original = E->type - (mode << 16) - LEV_PHOTO_DEL_PHOTO_LOCATION;
  return user_del_photo_location (u, E->photo_id, original >> 10);
}
