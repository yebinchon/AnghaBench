
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; } ;
typedef TYPE_1__ treap ;
typedef int* changes ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int trp_debug_print (int ,int *) ;

void chg_debug_print (changes x, FILE *f) {
  if ((long)(x) < 0) {
    long t = -(long)(x);
    fprintf (f, " [1] : %+ld\n", (t / 2) * (t & 1 ? +1 : -1));
  } else if (x) {
    if (x[0] < 0) {
      fprintf (f, "[%d] :", x[0]);
      trp_debug_print (((treap *)(x))->root, f);
      fprintf (f, "\n");

    } else {
      fprintf (f, " [%d] :", x[0]);
      int i;
      for (i = 1; i <= x[0]; i++) {
        fprintf (f, " %+d", (x[i] / 2) * (x[i] & 1 ? +1 : -1));
      }
      fprintf (f, "\n");
    }
  }
}
