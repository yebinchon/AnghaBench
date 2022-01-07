
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mayrecalc; } ;
struct TYPE_13__ {TYPE_1__ x; TYPE_5__** syms; } ;
struct TYPE_10__ {TYPE_2__* cse; } ;
struct TYPE_11__ {TYPE_3__ t; } ;
struct TYPE_12__ {TYPE_4__ u; } ;
struct TYPE_9__ {int op; } ;
typedef TYPE_6__* Node ;


 int ADDRF ;
 int ADDRG ;
 int ADDRL ;
 int CNST ;
 size_t RX ;
 int assert (int) ;
 int generic (int ) ;

int mayrecalc(Node p) {
 int op;

 assert(p && p->syms[RX]);
 if (p->syms[RX]->u.t.cse == ((void*)0))
  return 0;
 op = generic(p->syms[RX]->u.t.cse->op);
 if (op == CNST || op == ADDRF || op == ADDRG || op == ADDRL) {
  p->x.mayrecalc = 1;
  return 1;
 } else
  return 0;
}
