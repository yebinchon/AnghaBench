
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double deg2 (int n) {
  double e = 1;
  int i;
  for (i = 0; i < n; i++) {
    e *= 2;
  }
  return e;
}
