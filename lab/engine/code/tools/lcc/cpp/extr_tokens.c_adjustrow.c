
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lp; int bp; int max; scalar_t__ tp; } ;
typedef TYPE_1__ Tokenrow ;


 int growtokenrow (TYPE_1__*) ;
 int memmove (scalar_t__,scalar_t__,int) ;

void
adjustrow(Tokenrow *trp, int nt)
{
 int nby, size;

 if (nt==0)
  return;
 size = (trp->lp - trp->bp) + nt;
 while (size > trp->max)
  growtokenrow(trp);

 nby = (char *)trp->lp - (char *)trp->tp;
 if (nby)
  memmove(trp->tp+nt, trp->tp, nby);
 trp->lp += nt;
}
