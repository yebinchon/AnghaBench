
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long x; int y; } ;
typedef TYPE_1__ pair_ll_int ;


 int assert (int*) ;
 int* map_ll_int_add (int *,long long) ;
 int now ;
 int remove_expired_deletes_by_task_id () ;
 int task_deletes ;
 int task_id_to_delete_time ;
 int vector_pb (int ,TYPE_1__) ;

int delete_letters_by_task_id (long long task_id) {
  remove_expired_deletes_by_task_id();

  if (task_id != 0) {
    int *y = map_ll_int_add (&task_id_to_delete_time, task_id);
    assert (y);
    if (*y != now) {
      *y = now;
      pair_ll_int task_delete = {
        .x = task_id,
        .y = now
      };

      vector_pb (task_deletes, task_delete);
    }
    return 1;
  }
  return 0;
}
