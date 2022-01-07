
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_VALUE_NOT_IN_RANGE ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int) ;

int tl_parse_max_views (void) {
  int x = tl_fetch_int ();
  if (x != 0 && x != 100) {
    tl_fetch_set_error_format (TL_ERROR_VALUE_NOT_IN_RANGE, "max_views should be 0 or 100 (%d presented)", x);
  }
  return x;
}
