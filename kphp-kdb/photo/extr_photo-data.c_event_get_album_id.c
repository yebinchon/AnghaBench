
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * obj; int * dyn; } ;
typedef TYPE_1__ actual_object ;


 int assert (int ) ;
 int get_album_id (int *) ;

inline int event_get_album_id (actual_object *o) {
  if (o->obj == ((void*)0)) {
    assert (o->dyn != ((void*)0));
    return get_album_id (o->dyn);
  }

  return get_album_id (o->obj);
}
