
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* rchg; int * recs; } ;
typedef TYPE_1__ xdfile_t ;
struct xdlgroup {int start; int end; } ;


 scalar_t__ recs_match (int ,int ,long) ;

__attribute__((used)) static int group_slide_up(xdfile_t *xdf, struct xdlgroup *g, long flags)
{
 if (g->start > 0 &&
     recs_match(xdf->recs[g->start - 1], xdf->recs[g->end - 1], flags)) {
  xdf->rchg[--g->start] = 1;
  xdf->rchg[--g->end] = 0;

  while (xdf->rchg[g->start - 1])
   g->start--;

  return 0;
 } else {
  return -1;
 }
}
