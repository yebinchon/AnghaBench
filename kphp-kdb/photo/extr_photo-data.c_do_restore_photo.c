
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_restore_photo {int user_id; int photo_id; } ;


 scalar_t__ LEV_PHOTO_RESTORE_PHOTO ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_restore_photo* alloc_log_event (scalar_t__,int,int) ;
 int mode ;
 int restore_photo ;

int do_restore_photo (int uid, int pid) {
  int size = sizeof (struct lev_photo_restore_photo);
  struct lev_photo_restore_photo *E = alloc_log_event (LEV_PHOTO_RESTORE_PHOTO + (mode << 16), size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return MY_LOG_EVENT_HANDLER (restore_photo, 1);
}
