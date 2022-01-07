
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void int_sort (int *A, int b) {
  int i = 0, j = b;
  int h, t;
  if (b <= 0) { return; }
  h = A[b >> 1];
  do {
    while (A[i] < h) { i++; }
    while (A[j] > h) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  int_sort (A+i, b-i);
  int_sort (A, j);
}
