
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_create_photo {int type; int album_id; } ;


 int LEV_PHOTO_CREATE_PHOTO ;
 int MAX_PHOTOS ;
 int assert (int) ;
 int mode ;
 int user_create_photo (int *,int ,int) ;

int create_photo (user *u, struct lev_photo_create_photo *E, int size) {
  int cnt = E->type - (mode << 16) - LEV_PHOTO_CREATE_PHOTO;
  assert (cnt > 0 && cnt <= MAX_PHOTOS);

  return user_create_photo (u, E->album_id, cnt);
}
