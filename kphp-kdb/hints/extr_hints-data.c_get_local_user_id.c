
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_split_min ;
 int log_split_mod ;
 int ltbl_get_to (int *,int) ;
 int user_table ;
 scalar_t__ write_only ;

int get_local_user_id (int user_id) {
  if (user_id <= 0) {
    return -1;
  }
  if (user_id % log_split_mod != log_split_min) {
    return -1;
  }
  if (write_only) {
    return 1;
  }

  return ltbl_get_to (&user_table, user_id);
}
