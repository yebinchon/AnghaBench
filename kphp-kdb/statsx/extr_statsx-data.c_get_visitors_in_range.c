
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

int get_visitors_in_range (int *a, int l, int min, int max) {
  int i, r = 0;
  for (i = 0; i < l; i++) {
    if (max + 1 < a[2 * i + 1]) {
      fprintf (stderr, "max = %d, cur = %d\n", max, a[2 * i + 1]);
    }
    assert (a[2 * i + 1] <= max + 1);
    if (a[2 * i + 1] >= min ) {
      r ++;
    }
  }
  return r;
}
