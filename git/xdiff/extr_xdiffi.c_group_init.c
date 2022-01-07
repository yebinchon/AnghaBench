
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* rchg; } ;
typedef TYPE_1__ xdfile_t ;
struct xdlgroup {size_t start; size_t end; } ;



__attribute__((used)) static void group_init(xdfile_t *xdf, struct xdlgroup *g)
{
 g->start = g->end = 0;
 while (xdf->rchg[g->end])
  g->end++;
}
