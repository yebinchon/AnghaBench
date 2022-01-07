
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iCode_write (int,unsigned char**,int*,int) ;

void iCode_f (int *a, int n, int l, int r, unsigned char **res, int *skip) {
  if (n == 0) {
    return;
  }

  int c = n / 2;
  iCode_write (l - a[c], res, skip, l - r);

  iCode_f (a, c, l, a[c] - 1, res, skip);
  iCode_f (a + c + 1, n - c - 1, a[c], r, res, skip);
}
