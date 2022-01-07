
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cmp_long (const void *a, const void *b) {
  if (*(long long *)a < *(long long *)b) {
    return -1;
  }
  return *(long long *)a > *(long long *)b;
}
