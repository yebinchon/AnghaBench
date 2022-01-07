
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_set_volume {int volume_id; int server_id; } ;


 scalar_t__ LEV_PHOTO_SET_VOLUME ;
 struct lev_photo_set_volume* alloc_log_event (scalar_t__,int,int) ;
 int mode ;
 int set_volume (struct lev_photo_set_volume*) ;

int do_set_volume (int vid, int sid) {
  int size = sizeof (struct lev_photo_set_volume);
  struct lev_photo_set_volume *E =
    alloc_log_event (LEV_PHOTO_SET_VOLUME + (mode << 16), size, vid);

  E->volume_id = vid;
  E->server_id = sid;

  return set_volume (E);
}
