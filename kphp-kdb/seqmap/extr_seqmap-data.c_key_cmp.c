
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_cmp2 (int,int const*,int,int const*,int ) ;

int key_cmp (int l1, const int *k1, int l2, const int *k2) {
  return key_cmp2 (l1, k1, l2, k2, 0);
}
