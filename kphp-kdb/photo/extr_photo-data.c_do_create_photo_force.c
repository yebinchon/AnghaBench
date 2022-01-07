
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_create_photo_force {int user_id; int album_id; int photo_id; } ;


 scalar_t__ LEV_PHOTO_CREATE_PHOTO_FORCE ;
 int MAX_PHOTOS ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_create_photo_force* alloc_log_event (scalar_t__,int,int) ;
 int create_photo_force ;
 int mode ;

int do_create_photo_force (int uid, int aid, int cnt, int pid) {
  if (cnt <= 0 || cnt > MAX_PHOTOS) {
    return 0;
  }

  int size = sizeof (struct lev_photo_create_photo_force);
  struct lev_photo_create_photo_force *E =
    alloc_log_event (LEV_PHOTO_CREATE_PHOTO_FORCE + (mode << 16) + cnt, size, uid);

  E->user_id = uid;
  E->album_id = aid;
  E->photo_id = pid;

  return MY_LOG_EVENT_HANDLER (create_photo_force, 1);
}
