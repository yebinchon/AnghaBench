
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {int spills; int listed; TYPE_6__* next; } ;
struct TYPE_29__ {int op; TYPE_3__ x; } ;
struct TYPE_23__ {int regnode; int name; } ;
struct TYPE_28__ {TYPE_1__ x; int name; int sclass; } ;
struct TYPE_27__ {int (* rmap ) (unsigned int) ;} ;
struct TYPE_25__ {int size; } ;
struct TYPE_24__ {TYPE_4__ x; TYPE_2__ ptrmetric; } ;
typedef TYPE_5__* Symbol ;
typedef TYPE_6__* Node ;


 scalar_t__ ADDRL ;
 scalar_t__ ASGN ;
 int FUNC ;
 scalar_t__ INDIR ;
 TYPE_22__* IR ;
 int NEW0 (TYPE_5__*,int ) ;
 int * NeedsReg ;
 scalar_t__ P ;
 int REGISTER ;
 int assert (int) ;
 int debug (int ) ;
 int dumptree (TYPE_6__*) ;
 int fprint (int ,char*,...) ;
 int linearize (TYPE_6__*,TYPE_6__*) ;
 TYPE_6__* newnode (scalar_t__,TYPE_6__*,TYPE_6__*,TYPE_5__*) ;
 size_t opindex (int ) ;
 unsigned int opkind (int ) ;
 int prune (TYPE_6__*,TYPE_6__**) ;
 int ralloc (TYPE_6__*) ;
 int rewrite (TYPE_6__*) ;
 scalar_t__ sizeop (int ) ;
 int stderr ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void genspill(Symbol r, Node last, Symbol tmp) {
 Node p, q;
 Symbol s;
 unsigned ty;

 debug(fprint(stderr, "(spilling %s to local %s)\n", r->x.name, tmp->x.name));
 debug(fprint(stderr, "(genspill: "));
 debug(dumptree(last));
 debug(fprint(stderr, ")\n"));
 ty = opkind(last->op);
 NEW0(s, FUNC);
 s->sclass = REGISTER;
 s->name = s->x.name = r->x.name;
 s->x.regnode = r->x.regnode;
 q = newnode(ADDRL+P + sizeop(IR->ptrmetric.size), ((void*)0), ((void*)0), s);
 q = newnode(INDIR + ty, q, ((void*)0), ((void*)0));
 p = newnode(ADDRL+P + sizeop(IR->ptrmetric.size), ((void*)0), ((void*)0), tmp);
 p = newnode(ASGN + ty, p, q, ((void*)0));
 p->x.spills = 1;
 rewrite(p);
 prune(p, &q);
 q = last->x.next;
 linearize(p, q);
 for (p = last->x.next; p != q; p = p->x.next) {
  ralloc(p);
  assert(!p->x.listed || !NeedsReg[opindex(p->op)] || !(*IR->x.rmap)(opkind(p->op)));
 }
}
