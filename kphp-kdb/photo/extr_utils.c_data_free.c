
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int restore_info; int dyn_snapshots; int prm; int hidden_state; int id_to_local_id; } ;
typedef TYPE_1__ data ;
struct TYPE_6__ {int free_dyn; } ;


 TYPE_3__* DATA_FUNC (TYPE_1__*) ;
 int PERM (int ,int *) ;
 int free ;
 int free_restore_list ;
 int lookup_free (int *) ;
 int map_int_vptr_foreach (int *,int ) ;
 int map_int_vptr_free (int *) ;

void data_free (data *d) {
  lookup_free (&d->id_to_local_id);
  lookup_free (&d->hidden_state);

  PERM (free, &d->prm);
  map_int_vptr_foreach (&d->dyn_snapshots, DATA_FUNC(d)->free_dyn);
  map_int_vptr_free (&d->dyn_snapshots);


  map_int_vptr_foreach (&d->restore_info, free_restore_list);
  map_int_vptr_free (&d->restore_info);
}
