
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_change_photo_order {int user_id; int photo_id; int photo_id_near; } ;


 scalar_t__ LEV_PHOTO_CHANGE_PHOTO_ORDER ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_change_photo_order* alloc_log_event (scalar_t__,int,int) ;
 int change_photo_order ;
 int check_photo_id (int) ;
 int mode ;

int do_change_photo_order (int uid, int pid, int pid_near, int is_next) {
  if (!check_photo_id (pid) || pid_near < 0 || pid_near == pid) {
    return 0;
  }
  int size = sizeof (struct lev_photo_change_photo_order);
  struct lev_photo_change_photo_order *E =
    alloc_log_event (LEV_PHOTO_CHANGE_PHOTO_ORDER + (mode << 16) + is_next, size, uid);

  E->user_id = uid;
  E->photo_id = pid;
  E->photo_id_near = pid_near;

  return MY_LOG_EVENT_HANDLER (change_photo_order, 1);
}
