
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int * Tree ;
struct TYPE_15__ {scalar_t__ points; } ;
struct TYPE_13__ {int y; int x; int file; } ;
struct TYPE_11__ {TYPE_3__ src; int point; } ;
struct TYPE_12__ {TYPE_1__ point; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
typedef TYPE_3__ Coordinate ;
typedef TYPE_4__* Code ;


 int Defpoint ;
 int Gen ;
 int apply (scalar_t__,TYPE_3__*,int **) ;
 TYPE_4__* code (int ) ;
 TYPE_7__ events ;
 int findcount (int ,int ,int ) ;
 int glevel ;
 int identifiers ;
 int listnodes (int *,int ,int ) ;
 int locus (int ,TYPE_3__*) ;
 float ncalled ;
 int npoints ;
 scalar_t__ reachable (int ) ;
 float refinc ;
 TYPE_3__ src ;

void definept(Coordinate *p) {
 Code cp = code(Defpoint);

 cp->u.point.src = p ? *p : src;
 cp->u.point.point = npoints;
 if (ncalled > 0) {
  int n = findcount(cp->u.point.src.file,
   cp->u.point.src.x, cp->u.point.src.y);
  if (n > 0)
   refinc = (float)n/ncalled;
 }
 if (glevel > 2) locus(identifiers, &cp->u.point.src);
 if (events.points && reachable(Gen))
  {
   Tree e = ((void*)0);
   apply(events.points, &cp->u.point.src, &e);
   if (e)
    listnodes(e, 0, 0);
  }
}
