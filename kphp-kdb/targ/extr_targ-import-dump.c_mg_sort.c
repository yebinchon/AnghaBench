
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void mg_sort (long long *X, int b) {
  if (b <= 0) { return; }
  int i = 0, j = b;
  long long h = X[b >> 1], t;
  do {
    while (X[i] < h) { i++; }
    while (X[j] > h) { j--; }
    if (i <= j) {
      t = X[i]; X[i++] = X[j]; X[j--] = t;
    }
  } while (i <= j);
  mg_sort (X, j);
  mg_sort (X + i, b - i);
}
