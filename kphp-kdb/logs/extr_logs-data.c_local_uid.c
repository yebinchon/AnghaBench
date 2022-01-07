
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_split_min ;
 int log_split_mod ;

int local_uid (int user_id) {
  user_id %= log_split_mod;
  if (user_id < 0) {
    user_id += log_split_mod;
  }

  if (user_id != log_split_min) {
    return -1;
  }

  return 1;
}
