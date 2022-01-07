
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_add_photo_location_engine_old {int type; int secret; int local_id; int volume_id; int photo_id; } ;


 int LEV_PHOTO_ADD_PHOTO_LOCATION_ENGINE_OLD ;
 int mode ;
 int user_add_photo_location_engine (int *,int ,int,int,int,int ,int ,int ,int ) ;

int add_photo_location_engine_old (user *u, struct lev_photo_add_photo_location_engine_old *E, int size) {
  int original_size_rotate = E->type - (mode << 16) - LEV_PHOTO_ADD_PHOTO_LOCATION_ENGINE_OLD;
  return user_add_photo_location_engine (u, E->photo_id, original_size_rotate >> 10, original_size_rotate & 255, (original_size_rotate >> 8) & 3, E->volume_id, E->local_id, 0, E->secret);
}
