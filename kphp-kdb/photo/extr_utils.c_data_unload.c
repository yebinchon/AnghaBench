
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int n; } ;
struct TYPE_5__ {int objects_n; TYPE_2__ hidden_state; TYPE_2__ id_to_local_id; int * objects_offset; int * objects; } ;
typedef TYPE_1__ data ;


 int data_is_empty (TYPE_1__*,int) ;
 int lookup_unload (TYPE_2__*) ;

int data_unload (data *d) {
  d->objects_n = -1;
  d->objects = ((void*)0);
  d->objects_offset = ((void*)0);
  lookup_unload (&d->id_to_local_id);
  int pass_n = d->hidden_state.n;
  lookup_unload (&d->hidden_state);

  return data_is_empty (d, pass_n);
}
