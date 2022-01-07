
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_rotate_photo {int user_id; int photo_id; } ;


 scalar_t__ LEV_PHOTO_ROTATE_PHOTO ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_rotate_photo* alloc_log_event (scalar_t__,int,int) ;
 int check_photo_id (int) ;
 int mode ;
 int rotate_photo ;

int do_rotate_photo (int uid, int pid, int dir) {
  if (dir == -1) {
    dir = 3;
  }

  if ((dir != 1 && dir != 3) || !check_photo_id (pid)) {
    return 0;
  }

  int size = sizeof (struct lev_photo_rotate_photo);
  struct lev_photo_rotate_photo *E =
    alloc_log_event (LEV_PHOTO_ROTATE_PHOTO + (mode << 16) + dir, size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return MY_LOG_EVENT_HANDLER (rotate_photo, 1);
}
