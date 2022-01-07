
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 scalar_t__ conv_uid (int) ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int,int ,int ,int ) ;

int tl_parse_uid (void) {
  int uid = tl_fetch_int ();
  if (!uid || conv_uid (uid) < 0) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong server: user_id = %d, log_split_mod = %d, log_split_min = %d, log_split_max = %d", uid, log_split_mod, log_split_min, log_split_max);
    return -1;
  }
  return uid;
}
