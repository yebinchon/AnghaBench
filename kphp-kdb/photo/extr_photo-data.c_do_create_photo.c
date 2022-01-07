
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_create_photo {int user_id; int album_id; } ;


 scalar_t__ LEV_PHOTO_CREATE_PHOTO ;
 int MAX_PHOTOS ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_create_photo* alloc_log_event (scalar_t__,int,int) ;
 int create_photo ;
 int mode ;

int do_create_photo (int uid, int aid, int cnt) {
  if (cnt <= 0 || cnt > MAX_PHOTOS) {
    return 0;
  }

  int size = sizeof (struct lev_photo_create_photo);
  struct lev_photo_create_photo *E =
    alloc_log_event (LEV_PHOTO_CREATE_PHOTO + (mode << 16) + cnt, size, uid);

  E->user_id = uid;
  E->album_id = aid;

  return MY_LOG_EVENT_HANDLER (create_photo, 1);
}
