
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int field_desc ;
struct TYPE_4__ {int * obj; int * dyn; } ;
typedef TYPE_1__ actual_object ;
struct TYPE_5__ {int * fields; } ;


 int* GET_INT (int *,int *) ;
 int INT_MIN ;
 scalar_t__ has_field (int *,int) ;
 TYPE_2__* types ;

int event_get_field_int (actual_object *o, int type, int field_num) {
  if (field_num != -1) {
    field_desc *f = &types[type].fields[field_num];

    if (o->dyn != ((void*)0) && has_field (o->dyn, field_num)) {
      return *GET_INT (o->dyn, f);
    } else if (o->obj != ((void*)0) && has_field (o->obj, field_num)) {
      return *GET_INT (o->obj, f);
    }
  }
  return INT_MIN;
}
