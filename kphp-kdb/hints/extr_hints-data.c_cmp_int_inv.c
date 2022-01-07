
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cmp_int_inv (const void * _a, const void * _b) {
  int a = *(int *)_a, b = *(int *)_b;
  if (a < b) {
    return +1;
  } else if (a > b) {
    return -1;
  }
  return 0;
}
