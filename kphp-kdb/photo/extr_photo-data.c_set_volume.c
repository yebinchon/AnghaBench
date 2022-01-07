
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_set_volume {int server_id; int volume_id; } ;


 int* map_int_int_add (int *,int ) ;
 int volumes ;

int set_volume (struct lev_photo_set_volume *E) {
  int *t = map_int_int_add (&volumes, E->volume_id);
  if (t != ((void*)0)) {
    *t = E->server_id;
    return 1;
  }
  return 0;
}
