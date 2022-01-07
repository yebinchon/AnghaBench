
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cmp_tx (const void *x, const void *y) {
  int a = ((int *)x)[1], b = ((int *)y)[1];
  return a < b ? -1 : a == b ? 0 : +1;
}
