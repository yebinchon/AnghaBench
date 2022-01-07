
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long i1; long i2; long chg1; long chg2; scalar_t__ ignore; struct TYPE_4__* next; } ;
typedef TYPE_1__ xdchange_t ;


 scalar_t__ xdl_malloc (int) ;

__attribute__((used)) static xdchange_t *xdl_add_change(xdchange_t *xscr, long i1, long i2, long chg1, long chg2) {
 xdchange_t *xch;

 if (!(xch = (xdchange_t *) xdl_malloc(sizeof(xdchange_t))))
  return ((void*)0);

 xch->next = xscr;
 xch->i1 = i1;
 xch->i2 = i2;
 xch->chg1 = chg1;
 xch->chg2 = chg2;
 xch->ignore = 0;

 return xch;
}
