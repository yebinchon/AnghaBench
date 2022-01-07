
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _tl_store_raw_data (int*,int) ;
 int assert (int) ;
 scalar_t__ tl_store_check (int) ;

__attribute__((used)) static inline int tl_store_int (int x) {
  assert (tl_store_check (4) >= 0);
  _tl_store_raw_data (&x, 4);
  return 0;
}
