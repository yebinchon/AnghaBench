
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* rchg; } ;
typedef TYPE_1__ xdfile_t ;
struct xdlgroup {int start; int end; } ;



__attribute__((used)) static inline int group_previous(xdfile_t *xdf, struct xdlgroup *g)
{
 if (g->start == 0)
  return -1;

 g->end = g->start - 1;
 for (g->start = g->end; xdf->rchg[g->start - 1]; g->start--)
  ;

 return 0;
}
