
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pair_t ;


 scalar_t__ pair_cmp (int *,int *) ;

void pair_sort (pair_t *A, int b) {
  int i = 0, j = b;
  pair_t h, t;
  if (b <= 0) { return; }
  h = A[b >> 1];
  do {
    while (pair_cmp (&A[i], &h) < 0) { i++; }
    while (pair_cmp (&A[j], &h) > 0) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  pair_sort (A+i, b-i);
  pair_sort (A, j);
}
