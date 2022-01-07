
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d; int photos; int deleted_albums; int album_by_photo; } ;
typedef TYPE_1__ user ;


 int data_free (int *) ;
 int data_free_foreach ;
 int lookup_free (int *) ;
 int map_int_vptr_foreach (int *,int ) ;
 int map_int_vptr_free (int *) ;
 int set_int_free (int *) ;
 int user_free_changes (TYPE_1__*) ;

void user_unloaded_free (user *u) {
  user_free_changes (u);

  lookup_free (&u->album_by_photo);
  set_int_free (&u->deleted_albums);
  map_int_vptr_foreach (&u->photos, data_free_foreach);
  map_int_vptr_free (&u->photos);
  data_free (&u->d);
}
