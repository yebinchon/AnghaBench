
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* map_ll_int_get (int *,long long) ;
 int remove_expired_deletes_by_task_id () ;
 int task_id_to_delete_time ;

int is_deleted_task (long long task_id, int time_received) {
  remove_expired_deletes_by_task_id();

  if (task_id != 0) {
    int *y = map_ll_int_get (&task_id_to_delete_time, task_id);
    if (y != ((void*)0) && *y >= time_received) {
      return 1;
    }
  }
  return 0;
}
