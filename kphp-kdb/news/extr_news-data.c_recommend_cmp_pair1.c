
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int recommend_cmp_pair1 (const void *x, const void *y) {
  const int *a = (const int *) x;
  const int *b = (const int *) y;
  if (a[0] < b[0]) { return -1; }
  if (a[0] > b[0]) { return 1; }
  if (a[1] > b[1]) { return -1; }
  if (a[1] < b[1]) { return 1; }
  return 0;
}
