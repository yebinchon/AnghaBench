
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dyn_object ;
struct TYPE_8__ {int dyn_snapshots; int hidden_state; int id_to_local_id; int prm; } ;
typedef TYPE_1__ data ;
struct TYPE_9__ {int (* free_dyn ) (int *,int **) ;} ;


 TYPE_6__* DATA_FUNC (TYPE_1__*) ;
 int PERM (int ,int *,int) ;
 int data_get_local_id_by_id (TYPE_1__*,int) ;
 int data_get_pos_by_local_id (TYPE_1__*,int) ;
 int data_restore_append (TYPE_1__*,int,int) ;
 int del ;
 int get_i ;
 int lookup_set (int *,int,int) ;
 int map_int_vptr_del (int *,int) ;
 scalar_t__ map_int_vptr_get (int *,int) ;
 int stub1 (int *,int **) ;

int data_del (data *d, int id) {

  int local_id = data_get_local_id_by_id (d, id);
  if (local_id < 0) {
    return -1;
  }


  int pos = data_get_pos_by_local_id (d, local_id);
  if (pos >= 0) {
    PERM (del, &d->prm, pos);

    int prev_local_id = pos == 0 ? -1 : PERM (get_i, &d->prm, pos - 1);
    data_restore_append (d, prev_local_id, local_id);
  }

  lookup_set (&d->id_to_local_id, id, -1);


  lookup_set (&d->hidden_state, id, 0);

  dyn_object **dyn_obj = (dyn_object **)map_int_vptr_get (&d->dyn_snapshots, local_id + 1);
  if (dyn_obj != ((void*)0)) {
    DATA_FUNC(d)->free_dyn (((void*)0), dyn_obj);
    map_int_vptr_del (&d->dyn_snapshots, local_id + 1);
  }

  return 0;
}
