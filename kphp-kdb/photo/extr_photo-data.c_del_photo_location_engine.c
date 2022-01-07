
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_del_photo_location {int type; int photo_id; } ;


 int LEV_PHOTO_DEL_PHOTO_LOCATION_ENGINE ;
 int mode ;
 int user_del_photo_location_engine (int *,int ,int,int,int) ;

int del_photo_location_engine (user *u, struct lev_photo_del_photo_location *E, int size) {
  int original_size_rotate = E->type - (mode << 16) - LEV_PHOTO_DEL_PHOTO_LOCATION_ENGINE;
  return user_del_photo_location_engine (u, E->photo_id, (original_size_rotate >> 8) / 5, (original_size_rotate & 255) - 1, (original_size_rotate >> 8) % 5 - 1);
}
