
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voting_t ;


 scalar_t__ cmp_voting (int *,int *) ;

__attribute__((used)) static void sort_votings (voting_t *A, int b) {
  if (b <= 0) {
    return;
  }
  int i = 0, j = b;
  voting_t h = A[b >> 1], t;
  do {
    while (cmp_voting (&A[i], &h) < 0) { i++; }
    while (cmp_voting (&h, &A[j]) < 0) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  sort_votings (A + i, b - i);
  sort_votings (A, j);
}
