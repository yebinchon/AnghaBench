
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_len; int deleted_albums; int photos; int album_by_photo; int d; int * prev_used; int * next_used; int * aio; int * metafile; scalar_t__ local_id; scalar_t__ id; } ;
typedef TYPE_1__ user ;


 int data_init (int *,int *) ;
 int lookup_init (int *) ;
 int map_int_vptr_init (int *) ;
 int photo_func ;
 int set_int_init (int *) ;
 int write_only ;

void user_init (user *u) {
  u->id = 0;
  u->local_id = 0;
  u->metafile = ((void*)0);
  u->metafile_len = -1;

  u->aio = ((void*)0);
  u->next_used = ((void*)0);
  u->prev_used = ((void*)0);

  if (!write_only) {
    data_init (&u->d, &photo_func);
    lookup_init (&u->album_by_photo);
    map_int_vptr_init (&u->photos);
    set_int_init (&u->deleted_albums);
  }
}
