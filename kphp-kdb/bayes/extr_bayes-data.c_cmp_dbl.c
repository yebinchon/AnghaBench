
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cmp_dbl (const void *x, const void *y) {
  return *(double *)x < *(double *)y;
}
