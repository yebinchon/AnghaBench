
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_OUT_POS ;
 int _tl_store_raw_data (int*,int) ;
 int assert (int) ;
 scalar_t__ tl_store_check (int ) ;

__attribute__((used)) static inline int tl_store_pad (void) {
  assert (tl_store_check (0) >= 0);
  int x = 0;
  int pad = (-TL_OUT_POS) & 3;
  _tl_store_raw_data (&x, pad);
  return 0;
}
