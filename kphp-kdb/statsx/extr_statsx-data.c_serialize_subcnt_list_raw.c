
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int valid_until; unsigned long long mask_subcnt; int * subcnt; } ;



__attribute__((used)) static int *serialize_subcnt_list_raw (int *ptr, struct counter *C) {





  if (C->valid_until < 1296637200) {
    *(ptr++) = 0;
    return ptr;
  }
  if (!C->subcnt) {
    *(ptr++) = 0;
    return ptr;
  }
  *(ptr++) = 64;
  unsigned long long u = 1;
  int i, j;
  for (i = 0, j = 0; i < 64; i++, u <<= 1)
    if (u & C->mask_subcnt) {
      *(ptr++) = C->subcnt[j++];
    } else {
      *(ptr++) = 0;
    }
  return ptr;
}
