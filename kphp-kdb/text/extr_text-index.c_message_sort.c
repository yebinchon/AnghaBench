
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message_t ;


 scalar_t__ message_cmp (int *,int *) ;

void message_sort (message_t **A, int b) {
  int i = 0, j = b;
  message_t *h, *t;
  if (b <= 0) { return; }
  h = A[b >> 1];
  do {
    while (message_cmp (A[i], h) < 0) { i++; }
    while (message_cmp (A[j], h) > 0) { j--; }
    if (i <= j) {
      t = A[i]; A[i++] = A[j]; A[j--] = t;
    }
  } while (i <= j);
  message_sort (A+i, b-i);
  message_sort (A, j);
}
