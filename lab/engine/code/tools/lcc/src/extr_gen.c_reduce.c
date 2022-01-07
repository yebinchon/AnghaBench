
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_15__ {int inst; } ;
struct TYPE_18__ {TYPE_4__** syms; TYPE_2__ x; } ;
struct TYPE_16__ {int usecount; } ;
struct TYPE_17__ {TYPE_3__ x; int name; scalar_t__ temporary; } ;
struct TYPE_14__ {short** _nts; scalar_t__* _isinstruction; int (* _kids ) (TYPE_5__*,int,TYPE_5__**) ;} ;
struct TYPE_13__ {TYPE_1__ x; } ;
typedef TYPE_5__* Node ;


 TYPE_12__* IR ;
 size_t RX ;
 int assert (int) ;
 int debug (int ) ;
 int fprint (int ,char*,int ) ;
 int getrule (TYPE_5__*,int) ;
 TYPE_5__* reuse (TYPE_5__*,int) ;
 int stderr ;
 int stub1 (TYPE_5__*,int,TYPE_5__**) ;

__attribute__((used)) static void reduce(Node p, int nt) {
 int rulenum, i;
 short *nts;
 Node kids[10];

 p = reuse(p, nt);
 rulenum = getrule(p, nt);
 nts = IR->x._nts[rulenum];
 (*IR->x._kids)(p, rulenum, kids);
 for (i = 0; nts[i]; i++)
  reduce(kids[i], nts[i]);
 if (IR->x._isinstruction[rulenum]) {
  assert(p->x.inst == 0 || p->x.inst == nt);
  p->x.inst = nt;
  if (p->syms[RX] && p->syms[RX]->temporary) {
   debug(fprint(stderr, "(using %s)\n", p->syms[RX]->name));
   p->syms[RX]->x.usecount++;
  }
 }
}
