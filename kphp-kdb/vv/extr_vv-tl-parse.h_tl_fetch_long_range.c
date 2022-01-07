
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_VALUE_NOT_IN_RANGE ;
 long long tl_fetch_long () ;
 int tl_fetch_set_error_format (int ,char*,long long,long long,long long) ;

__attribute__((used)) static inline long long tl_fetch_long_range (long long min, long long max) {
  long long x = tl_fetch_long ();
  if (x < min || x > max) {
    tl_fetch_set_error_format (TL_ERROR_VALUE_NOT_IN_RANGE, "Expected int64 in range [%lld,%lld], %lld presented", min, max, x);
  }
  return x;
}
