
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_21__ {TYPE_5__** kids; } ;
struct TYPE_23__ {TYPE_3__ x; int * kids; int op; } ;
struct TYPE_19__ {int name; } ;
struct TYPE_22__ {TYPE_1__ x; } ;
struct TYPE_20__ {int size; } ;
struct TYPE_18__ {TYPE_2__ ptrmetric; } ;
typedef TYPE_4__* Symbol ;
typedef TYPE_5__* Node ;


 scalar_t__ ADDRL ;
 scalar_t__ INDIR ;
 TYPE_17__* IR ;
 scalar_t__ P ;
 int debug (int ) ;
 int dumptree (TYPE_5__*) ;
 int fprint (int ,char*,...) ;
 int linearize (TYPE_5__*,TYPE_5__*) ;
 void* newnode (scalar_t__,TYPE_5__*,int *,TYPE_4__*) ;
 int opkind (int ) ;
 int prune (TYPE_5__*,TYPE_5__**) ;
 int reprune (int *,int ,int,TYPE_5__*) ;
 int rewrite (TYPE_5__*) ;
 scalar_t__ sizeop (int ) ;
 int stderr ;

__attribute__((used)) static void genreload(Node p, Symbol tmp, int i) {
 Node q;
 int ty;

 debug(fprint(stderr, "(replacing %x with a reload from %s)\n", p->x.kids[i], tmp->x.name));
 debug(fprint(stderr, "(genreload: "));
 debug(dumptree(p->x.kids[i]));
 debug(fprint(stderr, ")\n"));
 ty = opkind(p->x.kids[i]->op);
 q = newnode(ADDRL+P + sizeop(IR->ptrmetric.size), ((void*)0), ((void*)0), tmp);
 p->x.kids[i] = newnode(INDIR + ty, q, ((void*)0), ((void*)0));
 rewrite(p->x.kids[i]);
 prune(p->x.kids[i], &q);
 reprune(&p->kids[1], reprune(&p->kids[0], 0, i, p), i, p);
 prune(p, &q);
 linearize(p->x.kids[i], p);
}
