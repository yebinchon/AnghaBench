
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int new_v; } ;
struct TYPE_5__ {scalar_t__ new_objects_n; TYPE_1__ hidden_state; int dyn_snapshots; int prm; } ;
typedef TYPE_2__ data ;


 scalar_t__ PERM (int ,int *,int) ;
 int is_trivial_pass ;
 scalar_t__ map_int_int_used (int *) ;
 scalar_t__ map_int_vptr_used (int *) ;

int data_is_empty (data *d, int pass_n) {
  return d->new_objects_n == 0 &&
          PERM (is_trivial_pass, &d->prm, pass_n) &&
          map_int_vptr_used (&d->dyn_snapshots) == 0 &&
          map_int_int_used (&d->hidden_state.new_v) == 0 &&
          1;
}
