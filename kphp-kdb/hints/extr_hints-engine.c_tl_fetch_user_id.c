
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int check_user_id (int) ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int,int ,int ,int ) ;

int tl_fetch_user_id (void) {
  if (tl_fetch_error()) {
    return 0;
  }
  int user_id = tl_fetch_int();
  if (!check_user_id (user_id)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong server: user_id = %d, log_split_mod = %d, log_split_min = %d, log_split_max = %d", user_id, log_split_mod, log_split_min, log_split_max);
  }

  return user_id;
}
