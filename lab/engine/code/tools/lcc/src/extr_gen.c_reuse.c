
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; scalar_t__ mayrecalc; } ;
struct TYPE_14__ {TYPE_2__ x; TYPE_1__** kids; int op; TYPE_5__** syms; } ;
struct TYPE_11__ {TYPE_6__* cse; } ;
struct TYPE_12__ {TYPE_3__ t; } ;
struct TYPE_13__ {TYPE_4__ u; } ;
struct TYPE_9__ {scalar_t__ op; } ;
typedef TYPE_5__* Symbol ;
typedef TYPE_6__* Node ;


 scalar_t__ INDIR ;
 scalar_t__ P ;
 size_t RX ;
 scalar_t__ VREG ;
 scalar_t__ generic (int ) ;

__attribute__((used)) static Node reuse(Node p, int nt) {
 struct _state {
  short cost[1];
 };
 Symbol r = p->syms[RX];

 if (generic(p->op) == INDIR && p->kids[0]->op == VREG+P
 && r->u.t.cse && p->x.mayrecalc
 && ((struct _state*)r->u.t.cse->x.state)->cost[nt] == 0)
  return r->u.t.cse;
 else
  return p;
}
