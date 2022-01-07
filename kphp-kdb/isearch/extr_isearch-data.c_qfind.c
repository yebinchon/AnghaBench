
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rating ;


 int assert (int) ;
 int rand () ;

rating qfind (rating *a, int l, int r, int k) {
  assert (l <= k && k <= r);

  if (l == r) {
    return a[l];
  }

  rating c = a[l + rand() % (r - l + 1)], t;
  int i = l, j = r;

  while (i <= j) {
    while (a[i] < c) {
      i++;
    }
    while (c < a[j]) {
      j--;
    }
    if (i <= j) {
      t = a[i];
      a[i] = a[j];
      a[j] = t;
      i++;
      j--;
    }
  }

  if (k <= j) {
    return qfind (a, l, j, k);
  }
  return qfind (a, j + 1, r, k);
}
