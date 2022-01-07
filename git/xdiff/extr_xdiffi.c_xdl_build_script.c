
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* rchg; long nrec; } ;
struct TYPE_5__ {char* rchg; long nrec; } ;
struct TYPE_7__ {TYPE_2__ xdf2; TYPE_1__ xdf1; } ;
typedef TYPE_3__ xdfenv_t ;
typedef int xdchange_t ;


 int * xdl_add_change (int *,long,long,long,long) ;
 int xdl_free_script (int *) ;

int xdl_build_script(xdfenv_t *xe, xdchange_t **xscr) {
 xdchange_t *cscr = ((void*)0), *xch;
 char *rchg1 = xe->xdf1.rchg, *rchg2 = xe->xdf2.rchg;
 long i1, i2, l1, l2;




 for (i1 = xe->xdf1.nrec, i2 = xe->xdf2.nrec; i1 >= 0 || i2 >= 0; i1--, i2--)
  if (rchg1[i1 - 1] || rchg2[i2 - 1]) {
   for (l1 = i1; rchg1[i1 - 1]; i1--);
   for (l2 = i2; rchg2[i2 - 1]; i2--);

   if (!(xch = xdl_add_change(cscr, i1, i2, l1 - i1, l2 - i2))) {
    xdl_free_script(cscr);
    return -1;
   }
   cscr = xch;
  }

 *xscr = cscr;

 return 0;
}
