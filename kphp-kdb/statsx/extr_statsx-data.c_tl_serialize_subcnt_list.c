
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int valid_until; unsigned long long mask_subcnt; int* subcnt; } ;


 int ipopcount (unsigned long long) ;
 int tl_store_int (int) ;

void tl_serialize_subcnt_list (struct counter *C) {





  if (C->valid_until < 1296637200) {
    tl_store_int (0);
    return;
  }
  int num = ipopcount(C->mask_subcnt);
  tl_store_int (num);
  unsigned long long u = 1;
  int i, j;
  for (i = 0, j = 0; i < 64; i++, u <<= 1) {
    if (u & C->mask_subcnt) {
      tl_store_int (i);
      tl_store_int (C->subcnt[j ++]);
    }
  }
}
