
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_save_photo_location {int user_id; int photo_id; } ;


 scalar_t__ LEV_PHOTO_SAVE_PHOTO_LOCATION ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_save_photo_location* alloc_log_event (scalar_t__,int,int) ;
 int check_photo_id (int) ;
 int mode ;
 int save_photo_location ;

int do_save_photo_location (int uid, int pid) {
  if (!check_photo_id (pid)) {
    return 0;
  }

  int size = sizeof (struct lev_photo_save_photo_location);
  struct lev_photo_save_photo_location *E =
    alloc_log_event (LEV_PHOTO_SAVE_PHOTO_LOCATION + (mode << 16), size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return MY_LOG_EVENT_HANDLER (save_photo_location, 1);
}
