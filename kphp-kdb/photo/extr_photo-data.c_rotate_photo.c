
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_rotate_photo {int type; int photo_id; } ;


 int LEV_PHOTO_ROTATE_PHOTO ;
 int mode ;
 int user_rotate_photo (int *,int ,int) ;

int rotate_photo (user *u, struct lev_photo_rotate_photo *E, int size) {
  return user_rotate_photo (u, E->photo_id, E->type - (mode << 16) - LEV_PHOTO_ROTATE_PHOTO);
}
