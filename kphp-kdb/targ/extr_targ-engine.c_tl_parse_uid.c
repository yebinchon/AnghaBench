
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_VALUE_NOT_IN_RANGE ;
 scalar_t__ conv_user_id (int) ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 int tl_fetch_positive_int () ;
 int tl_fetch_set_error_format (int ,char*,int ,int ,int ,int) ;

int tl_parse_uid (void) {
  int x = tl_fetch_positive_int ();
  if (x > 0) {
    if (conv_user_id (x) < 0) {
      tl_fetch_set_error_format (TL_ERROR_VALUE_NOT_IN_RANGE, "user_id is not from this engine: log_split_min = %d, log_split_max = %d, log_split_mod = %d, uid = %d", log_split_min, log_split_max, log_split_mod, x);
      x = -1;
    }
  }
  return x;
}
