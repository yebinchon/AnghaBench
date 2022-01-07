
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pair_t ;


 int * P ;
 scalar_t__ cmp_pair (int *,int *) ;

__attribute__((used)) static void qsort_p (int a, int b) {
  int i, j;
  pair_t h, t;
  if (a >= b) { return; }
  h = P[(a+b)>>1];
  i = a;
  j = b;
  do {
    while (cmp_pair (P+i, &h) < 0) { i++; }
    while (cmp_pair (P+j, &h) > 0) { j--; }
    if (i <= j) {
      t = P[i]; P[i++] = P[j]; P[j--] = t;
    }
  } while (i <= j);
  qsort_p (a, j);
  qsort_p (i, b);
}
