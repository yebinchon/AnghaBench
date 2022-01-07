
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_delete_album {int user_id; int album_id; } ;


 scalar_t__ LEV_PHOTO_DELETE_ALBUM ;
 int MY_LOG_EVENT_HANDLER (int ,int ) ;
 struct lev_photo_delete_album* alloc_log_event (scalar_t__,int,int) ;
 int delete_album ;
 int mode ;

int do_delete_album (int uid, int aid) {
  int size = sizeof (struct lev_photo_delete_album);
  struct lev_photo_delete_album *E =
    alloc_log_event (LEV_PHOTO_DELETE_ALBUM + (mode << 16), size, uid);

  E->user_id = uid;
  E->album_id = aid;

  return MY_LOG_EVENT_HANDLER (delete_album, 0);
}
