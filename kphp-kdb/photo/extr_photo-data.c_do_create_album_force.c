
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_create_album_force {int user_id; int album_id; } ;


 scalar_t__ LEV_PHOTO_CREATE_ALBUM_FORCE ;
 int MY_LOG_EVENT_HANDLER (int ,int) ;
 struct lev_photo_create_album_force* alloc_log_event (scalar_t__,int,int) ;
 int check_album_id (int) ;
 int create_album_force ;
 int mode ;

int do_create_album_force (int uid, int aid) {
  if (!check_album_id (aid)) {
    return 0;
  }
  int size = sizeof (struct lev_photo_create_album_force);
  struct lev_photo_create_album_force *E =
    alloc_log_event (LEV_PHOTO_CREATE_ALBUM_FORCE + (mode << 16), size, uid);

  E->user_id = uid;
  E->album_id = aid;

  return MY_LOG_EVENT_HANDLER (create_album_force, 1);
}
