
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int valid_until; unsigned long long mask_subcnt; int* subcnt; } ;


 int ipopcount (unsigned long long) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *serialize_subcnt_list (char *ptr, struct counter *C) {





  if (C->valid_until < 1296637200) {
    ptr += sprintf (ptr, "s:5:\"extra\";a:0:{}");
    return ptr;
  }
  int num = ipopcount(C->mask_subcnt);
  unsigned long long u = 1;
  int i, j;
  ptr += sprintf (ptr, "s:5:\"extra\";a:%d:{", num);
  for (i = 0, j = 0; i < 64; i++, u <<= 1)
    if (u & C->mask_subcnt) {
      ptr += sprintf (ptr, "i:%d;i:%d;", i, C->subcnt[j++]);
    }
  *ptr++ = '}';
  return ptr;
}
