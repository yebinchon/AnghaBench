
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data_functions ;
struct TYPE_3__ {int objects_n; int restore_info; int dyn_snapshots; int prm; int hidden_state; int id_to_local_id; scalar_t__ new_objects_n; int * objects_offset; int * objects; int * func; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *) ;
 int init ;
 int lookup_init (int *) ;
 int map_int_vptr_init (int *) ;

void data_init (data *d, data_functions *f) {
  d->func = f;
  d->objects_n = -2;
  d->objects = ((void*)0);
  d->objects_offset = ((void*)0);
  d->new_objects_n = 0;
  lookup_init (&d->id_to_local_id);
  lookup_init (&d->hidden_state);


  PERM (init, &d->prm);
  map_int_vptr_init (&d->dyn_snapshots);
  map_int_vptr_init (&d->restore_info);
}
