
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void il_sort (int *A, int b) {
  if (b <= 0) { return; }
  int h = A[b >> 1], i = 0, j = b, t;
  do {
    while (A[i] < h) { i++; }
    while (A[j] > h) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  il_sort (A, j);
  il_sort (A+i, b-i);
}
