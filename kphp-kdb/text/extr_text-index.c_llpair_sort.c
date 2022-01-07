
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int llpair_t ;


 scalar_t__ llpair_cmp (int *,int *) ;

void llpair_sort (llpair_t *A, int b) {
  int i = 0, j = b;
  llpair_t h, t;
  if (b <= 0) { return; }
  h = A[b >> 1];
  do {
    while (llpair_cmp (&A[i], &h) < 0) { i++; }
    while (llpair_cmp (&A[j], &h) > 0) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  llpair_sort (A+i, b-i);
  llpair_sort (A, j);
}
