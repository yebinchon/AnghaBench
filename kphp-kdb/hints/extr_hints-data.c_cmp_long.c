
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cmp_long (const void * _a, const void * _b) {
  long long a = *(long long *)_a, b = *(long long *)_b;
  if (a < b) {
    return -1;
  } else if (a > b) {
    return +1;
  }
  return 0;
}
