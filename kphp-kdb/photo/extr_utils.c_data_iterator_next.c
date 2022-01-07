
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ids_i; size_t ids_end; size_t new_ids_i; size_t new_ids_end; int* ids; int dir; int* new_ids; int* new_local_ids; int* old_perm; int id; int local_id; int d; } ;
typedef TYPE_1__ data_iterator ;


 scalar_t__ data_get_hidden_state (int ,int) ;

int data_iterator_next (data_iterator *it) {

  while (it->ids_i != it->ids_end || it->new_ids_i != it->new_ids_end) {
    int id, local_id;
    if (it->new_ids_i == it->new_ids_end || (it->ids_i != it->ids_end && it->ids[it->ids_i] * it->dir <= it->new_ids[it->new_ids_i] * it->dir)) {
      if (it->new_ids_i != it->new_ids_end && it->ids[it->ids_i] == it->new_ids[it->new_ids_i]) {
        id = it->new_ids[it->new_ids_i];
        local_id = it->new_local_ids[it->new_ids_i];

        it->new_ids_i += it->dir;
        it->ids_i += it->dir;
      } else {
        id = it->ids[it->ids_i];
        local_id = it->old_perm[it->ids_i];
        it->ids_i += it->dir;
      }
    } else {
      id = it->new_ids[it->new_ids_i];
      local_id = it->new_local_ids[it->new_ids_i];
      it->new_ids_i += it->dir;
    }
    if (local_id >= 0 && data_get_hidden_state (it->d, id) == 0) {


      it->id = -id * it->dir;
      it->local_id = local_id;
      return 1;
    }
  }
  return 0;
}
