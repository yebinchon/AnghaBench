
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dyn_object ;
struct TYPE_5__ {int dyn_snapshots; } ;
typedef TYPE_1__ data ;
typedef int change ;
struct TYPE_6__ {int (* add_change ) (int **,int *) ;} ;


 TYPE_3__* DATA_FUNC (TYPE_1__*) ;
 scalar_t__ map_int_vptr_add (int *,int) ;
 int map_int_vptr_del (int *,int) ;
 int stub1 (int **,int *) ;

int data_add_change (data *d, change *ch, int local_id) {



  dyn_object **dyn_obj = (dyn_object **)map_int_vptr_add (&d->dyn_snapshots, local_id + 1);
  DATA_FUNC(d)->add_change(dyn_obj, ch);
  if (*dyn_obj == ((void*)0)) {
    map_int_vptr_del (&d->dyn_snapshots, local_id + 1);
  }

  return 0;
}
