
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_EXTRA_DATA ;
 int TL_IN_POS ;
 int TL_IN_REMAINING ;
 int tl_fetch_set_error_format (int ,char*,int) ;

__attribute__((used)) static inline int tl_fetch_check_str_end (int size) {
  if (TL_IN_REMAINING != size + ((-size - TL_IN_POS) & 3)) {
    tl_fetch_set_error_format (TL_ERROR_EXTRA_DATA, "extra %d bytes after query", TL_IN_REMAINING - size - ((-size - TL_IN_POS) & 3));
    return -1;
  }
  return 1;
}
