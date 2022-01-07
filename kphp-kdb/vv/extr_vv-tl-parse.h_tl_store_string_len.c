
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _tl_store_raw_data (int*,int) ;
 int assert (int) ;
 scalar_t__ tl_store_check (int) ;

__attribute__((used)) static inline int tl_store_string_len (int len) {
  assert (tl_store_check (4) >= 0);
  assert (len >= 0);
  assert (len < (1 << 24));
  if (len < 254) {
    _tl_store_raw_data (&len, 1);
  } else {
    int x = 254;
    _tl_store_raw_data (&x, 1);
    _tl_store_raw_data (&len, 3);
  }
  return 0;
}
