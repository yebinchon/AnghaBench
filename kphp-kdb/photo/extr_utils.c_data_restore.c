
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hidden_state; } ;
typedef TYPE_1__ data ;


 int assert (int) ;
 scalar_t__ data_get_hidden_state (TYPE_1__*,int) ;
 int data_get_local_id_by_id (TYPE_1__*,int) ;
 int data_get_pos_by_local_id (TYPE_1__*,int) ;
 int data_move_and_create (TYPE_1__*,int,int) ;
 scalar_t__ data_restore_del (TYPE_1__*,int,int*) ;
 int dbg (char*) ;
 int lookup_set (int *,int,int ) ;

int data_restore (data *d, int id) {
  if (data_get_hidden_state (d, id) == 0) {
    return -1;
  }

  int local_id = data_get_local_id_by_id (d, id);
  if (local_id < 0) {
    return -1;
  }

  int prev_local_id;

  if (data_restore_del (d, local_id, &prev_local_id) <= 0) {
    dbg ("data_restore_del failed\n");
    return -1;
  }

  int i = local_id,
      j;
  assert (data_get_pos_by_local_id (d, i) == -1);
  if (prev_local_id == -1) {
    j = 0;
  } else {
    j = data_get_pos_by_local_id (d, prev_local_id) + 1;

    assert (j != 0);
  }

  assert (data_move_and_create (d, i, j) > -1);

  lookup_set (&d->hidden_state, id, 0);
  return 0;
}
