
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;


 int assert (int) ;
 int data_get_cnt (int *) ;
 scalar_t__ data_get_hidden_state (int *,int) ;
 int data_get_local_id_by_id (int *,int) ;
 int data_get_local_id_by_pos (int *,int) ;
 int data_get_pos_by_local_id (int *,int) ;
 int data_move_new (int *,int,int,int,int) ;
 int write_only ;

inline int user_change_order (data *d, int id, int id_near, int is_next) {


  assert (!write_only);

  if (data_get_hidden_state (d, id) != 0 || (id_near != 0 && data_get_hidden_state (d, id_near) != 0)) {
    return 0;
  }

  int i, j;


  int local_id = data_get_local_id_by_id (d, id);
  i = data_get_pos_by_local_id (d, local_id);
  if (i < 0) {
    return i;
  }

  int local_id_near;
  if (id_near != 0) {
    local_id_near = data_get_local_id_by_id (d, id_near);
    j = data_get_pos_by_local_id (d, local_id_near);
    if (j < 0) {
      return j;
    }
    if (is_next) {
      j--;
      local_id_near = data_get_local_id_by_pos (d, j);
    }

    if (i > j) {
      j++;
    }
  } else {
    if (is_next) {
      j = data_get_cnt (d) - 1;
      local_id_near = data_get_local_id_by_pos (d, j);
    } else {
      j = 0;
      local_id_near = -1;
    }
  }

  return data_move_new (d, i, j, local_id, local_id_near);
}
