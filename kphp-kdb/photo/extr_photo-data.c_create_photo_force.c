
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_create_photo_force {int type; int photo_id; int album_id; } ;


 int LEV_PHOTO_CREATE_PHOTO_FORCE ;
 int MAX_PHOTOS ;
 int assert (int) ;
 int mode ;
 int user_create_photo_force (int *,int ,int,int ) ;

int create_photo_force (user *u, struct lev_photo_create_photo_force *E, int size) {
  int cnt = E->type - (mode << 16) - LEV_PHOTO_CREATE_PHOTO_FORCE;
  assert (cnt > 0 && cnt <= MAX_PHOTOS);

  return user_create_photo_force (u, E->album_id, cnt, E->photo_id) == cnt;
}
