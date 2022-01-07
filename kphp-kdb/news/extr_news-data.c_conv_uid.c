
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_USERS ;
 scalar_t__ NOTIFY_MODE ;
 scalar_t__ RECOMMEND_MODE ;
 scalar_t__ UG_MODE ;
 int assert (int) ;
 int log_split_min ;
 int log_split_mod ;
 int ug_mode ;

int conv_uid (int user_id) {
  assert (UG_MODE || NOTIFY_MODE || RECOMMEND_MODE);
  if (UG_MODE) {
    user_id = (user_id ^ ug_mode) - ug_mode;
  }
  if (user_id <= 0 ) { return -1; }
  if (user_id % log_split_mod != log_split_min) { return -1; }
  user_id /= log_split_mod;
  return user_id < MAX_USERS ? user_id : -1;
}
