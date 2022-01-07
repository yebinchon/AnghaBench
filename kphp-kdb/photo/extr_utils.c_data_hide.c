
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int prm; int hidden_state; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *,int) ;
 int assert (int) ;
 int data_get_local_id_by_id (TYPE_1__*,int) ;
 int data_get_pos_by_local_id (TYPE_1__*,int) ;
 int data_restore_add (TYPE_1__*,int,int) ;
 int del ;
 int get_i ;
 int lookup_set (int *,int,int) ;

int data_hide (data *d, int id, int tm) {
  int local_id = data_get_local_id_by_id (d, id);
  if (local_id < 0) {
    return -1;
  }

  int pos = data_get_pos_by_local_id (d, local_id);
  assert (pos >= 0);

  int prev_local_id = pos == 0 ? -1 : PERM (get_i, &d->prm, pos - 1);
  data_restore_add (d, local_id, prev_local_id);

  lookup_set (&d->hidden_state, id, tm);

  return PERM (del, &d->prm, pos);
}
