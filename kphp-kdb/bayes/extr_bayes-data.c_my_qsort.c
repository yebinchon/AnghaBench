
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QL ;
 int QR ;
 int rand () ;

void my_qsort (double *a, int l, int r) {
  if (l >= r || (l > QL && r < QR)) {
    return;
  }

  int i = l, j = r;
  double t, c = a[rand() % (r - l + 1) + l];

  while (i <= j) {
    while (a[i] < c) {
      i++;
    }
    while (a[j] > c) {
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

  my_qsort (a, l, j);
  my_qsort (a, i, r);
}
