
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ull_sort (unsigned long long *A, int b) {
  int i = 0, j = b;
  unsigned long long h, t;
  if (b <= 0) { return; }
  h = A[b >> 1];
  do {
    while (A[i] < h) { i++; }
    while (A[j] > h) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  ull_sort (A+i, b-i);
  ull_sort (A, j);
}
