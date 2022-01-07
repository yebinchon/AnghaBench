
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nrec; scalar_t__* rchg; } ;
typedef TYPE_1__ xdfile_t ;
struct xdlgroup {int end; int start; } ;



__attribute__((used)) static inline int group_next(xdfile_t *xdf, struct xdlgroup *g)
{
 if (g->end == xdf->nrec)
  return -1;

 g->start = g->end + 1;
 for (g->end = g->start; xdf->rchg[g->end]; g->end++)
  ;

 return 0;
}
