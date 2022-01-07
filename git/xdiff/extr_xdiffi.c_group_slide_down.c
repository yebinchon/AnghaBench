
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nrec; int* rchg; int * recs; } ;
typedef TYPE_1__ xdfile_t ;
struct xdlgroup {size_t end; size_t start; } ;


 scalar_t__ recs_match (int ,int ,long) ;

__attribute__((used)) static int group_slide_down(xdfile_t *xdf, struct xdlgroup *g, long flags)
{
 if (g->end < xdf->nrec &&
     recs_match(xdf->recs[g->start], xdf->recs[g->end], flags)) {
  xdf->rchg[g->start++] = 0;
  xdf->rchg[g->end++] = 1;

  while (xdf->rchg[g->end])
   g->end++;

  return 0;
 } else {
  return -1;
 }
}
