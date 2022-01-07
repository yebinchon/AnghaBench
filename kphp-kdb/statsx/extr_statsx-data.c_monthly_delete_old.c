
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int monthly_delete_old (int *a1, int l1, int *a2, int l2, int day) {
  int i;
  int r = 0;
  for (i = 0; i < l1; i++) if (a1[2 * i + 1] >= day) {
    assert (r < l2);
    a2[2 * r + 0] = a1[2 * i + 0];
    a2[2 * r + 1] = a1[2 * i + 1];
    r ++;
  }
  return r;
}
