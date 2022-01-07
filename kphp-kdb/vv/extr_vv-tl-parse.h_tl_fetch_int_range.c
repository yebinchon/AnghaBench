
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_VALUE_NOT_IN_RANGE ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int,int,int) ;

__attribute__((used)) static inline int tl_fetch_int_range (int min, int max) {
  int x = tl_fetch_int ();
  if (x < min || x > max) {
    tl_fetch_set_error_format (TL_ERROR_VALUE_NOT_IN_RANGE, "Expected int32 in range [%d,%d], %d presented", min, max, x);
  }
  return x;
}
