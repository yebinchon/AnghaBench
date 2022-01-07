
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dl_abs (int) ;
 int log_split_min ;
 int log_split_mod ;

int check_user_id (int user_id) {
  return (user_id != 0 && dl_abs (user_id) % log_split_mod == log_split_min);
}
