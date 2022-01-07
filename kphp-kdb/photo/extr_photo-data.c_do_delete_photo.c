
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_delete_photo {int user_id; int photo_id; } ;


 scalar_t__ LEV_PHOTO_DELETE_PHOTO ;
 int MY_LOG_EVENT_HANDLER (int ,int ) ;
 struct lev_photo_delete_photo* alloc_log_event (scalar_t__,int,int) ;
 int delete_photo ;
 int mode ;

int do_delete_photo (int uid, int pid) {
  int size = sizeof (struct lev_photo_delete_photo);
  struct lev_photo_delete_photo *E =
    alloc_log_event (LEV_PHOTO_DELETE_PHOTO + (mode << 16), size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return MY_LOG_EVENT_HANDLER (delete_photo, 0);
}
