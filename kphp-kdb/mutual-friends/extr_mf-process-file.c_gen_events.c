
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int engineN ;
 int max_user_events ;
 int uf ;
 int userN ;
 int * v ;
 int vct_add_lim (int *,int,int ) ;

void gen_events (int *a, int n) {
  int i, j;
  int mask = (1 << 30) - 1;
  for (i = 0; i < n; i++) {
    int can = 1, ida = a[i], idb;
    if (ida < 0) {
      ida = -ida;
    }

    if (ida > (1 << 30)) {
      can = 0;
      ida &= mask;
    }

    if (ida % engineN != uf) {
      continue;
    }
    assert (ida < userN);

    for (j = 0; j < n ; j++) {
      if (i != j) {

        idb = a[j];
        if (idb < 0) {
          continue;
        }
        assert (idb < userN);


        idb &= mask;

        vct_add_lim (&v[ida / engineN], 2 * idb + can, max_user_events);
      }
    }
  }
}
