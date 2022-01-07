
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_SYNTAX ;
 int TL_ERROR_TOO_LONG_STRING ;
 int TL_IN_REMAINING ;
 scalar_t__ tl_fetch_check (int) ;
 int tl_fetch_raw_data (int*,int) ;
 int tl_fetch_set_error (char*,int ) ;
 int tl_fetch_set_error_format (int ,char*,int,int) ;

__attribute__((used)) static inline int tl_fetch_string_len (int max_len) {
  if (tl_fetch_check (4) < 0) {
    return -1;
  }
  int x = 0;
  tl_fetch_raw_data (&x, 1);
  if (x == 255) {
    tl_fetch_set_error ("String len can not start with 0xff", TL_ERROR_SYNTAX);
    return -1;
  }
  if (x == 254) {
    tl_fetch_raw_data (&x, 3);
  }
  if (x > max_len) {
    tl_fetch_set_error_format (TL_ERROR_TOO_LONG_STRING, "string is too long: max_len = %d, len = %d", max_len, x);
    return -1;
  }
  if (x > TL_IN_REMAINING) {
    tl_fetch_set_error_format (TL_ERROR_SYNTAX, "string is too long: remaining_bytes = %d, len = %d", TL_IN_REMAINING, x);
    return -1;
  }
  return x;
}
