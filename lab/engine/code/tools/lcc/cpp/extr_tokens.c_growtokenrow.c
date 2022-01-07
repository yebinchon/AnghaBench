
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int * lp; int * bp; int * tp; } ;
typedef TYPE_1__ Tokenrow ;
typedef int Token ;


 int FATAL ;
 int error (int ,char*) ;
 scalar_t__ realloc (int *,int) ;

Token *
growtokenrow(Tokenrow *trp)
{
 int ncur = trp->tp - trp->bp;
 int nlast = trp->lp - trp->bp;

 trp->max = 3*trp->max/2 + 1;
 trp->bp = (Token *)realloc(trp->bp, trp->max*sizeof(Token));
 if (trp->bp == ((void*)0))
  error(FATAL, "Out of memory from realloc");
 trp->lp = &trp->bp[nlast];
 trp->tp = &trp->bp[ncur];
 return trp->lp;
}
