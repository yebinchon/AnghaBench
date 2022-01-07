
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_EXTRA_DATA ;
 scalar_t__ TL_IN_REMAINING ;
 int tl_fetch_set_error_format (int ,char*,scalar_t__) ;

__attribute__((used)) static inline int tl_fetch_end (void) {
  if (TL_IN_REMAINING) {
    tl_fetch_set_error_format (TL_ERROR_EXTRA_DATA, "extra %d bytes after query", TL_IN_REMAINING);
    return -1;
  }
  return 1;
}
