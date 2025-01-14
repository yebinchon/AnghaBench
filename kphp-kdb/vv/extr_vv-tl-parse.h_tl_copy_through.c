
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_COPY_THROUGH (int,int) ;
 int TL_IN_POS ;
 int TL_IN_REMAINING ;
 int TL_OUT_POS ;
 int TL_OUT_REMAINING ;
 scalar_t__ tl_fetch_check (int) ;
 scalar_t__ tl_store_check (int) ;

__attribute__((used)) static inline int tl_copy_through (int len, int advance) {
  if (!TL_COPY_THROUGH || tl_fetch_check (len) < 0 || tl_store_check (len) < 0) {
    return -1;
  }
  TL_COPY_THROUGH (len, advance);
  if (advance) {
    TL_IN_POS += len;
    TL_IN_REMAINING -= len;
  }
  TL_OUT_POS += len;
  TL_OUT_REMAINING -= len;
  return len;
}
