
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_SYNTAX ;
 int TL_IN_POS ;
 int TL_IN_REMAINING ;
 int assert (int) ;
 scalar_t__ tl_fetch_check (int ) ;
 int tl_fetch_raw_data (int*,int) ;
 int tl_fetch_set_error (char*,int ) ;

__attribute__((used)) static inline int tl_fetch_pad (void) {
  if (tl_fetch_check (0) < 0) {
    return -1;
  }
  int t = 0;
  int pad = (-TL_IN_POS) & 3;
  assert (TL_IN_REMAINING >= pad);
  tl_fetch_raw_data (&t, pad);
  if (t) {
    tl_fetch_set_error ("Padding with non-zeroes", TL_ERROR_SYNTAX);
    return -1;
  }
  return pad;
}
