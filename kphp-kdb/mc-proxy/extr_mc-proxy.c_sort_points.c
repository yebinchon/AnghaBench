
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mc_point_t ;


 scalar_t__ cmp_points (int *,int *) ;

__attribute__((used)) static void sort_points (mc_point_t *A, int N) {
  int i, j;
  mc_point_t h, t;
  if (N <= 0) {
    return;
  }
  if (N == 1) {
    if (cmp_points (&A[0], &A[1]) > 0) {
      t = A[0];
      A[0] = A[1];
      A[1] = t;
    }
    return;
  }
  i = 0;
  j = N;
  h = A[j >> 1];
  do {
    while (cmp_points (&A[i], &h) < 0) { i++; }
    while (cmp_points (&A[j], &h) > 0) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  sort_points (A+i, N-i);
  sort_points (A, j);
}
