
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int dl_abs (int) ;
 int h_users ;
 scalar_t__ import_dump_mode ;
 int log_split_min ;
 int log_split_mod ;
 scalar_t__ set_intp_get (int *,int*) ;
 int * users ;

user *conv_uid_get (int user_id) {
  if (user_id == 0) {
    return ((void*)0);
  }
  if (dl_abs (user_id) % log_split_mod != log_split_min) {
    return ((void*)0);
  }
  if (import_dump_mode) {
    return users;
  }

  user **u = (user **)set_intp_get (&h_users, &user_id);
  if (u == ((void*)0)) {
    return ((void*)0);
  }
  return *u;
}
