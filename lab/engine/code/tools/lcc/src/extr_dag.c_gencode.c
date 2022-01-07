
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_21__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


struct TYPE_29__ {int src; } ;
struct TYPE_25__ {int x; TYPE_8__** locals; } ;
struct TYPE_23__ {int offset; int base; int sym; } ;
struct TYPE_30__ {TYPE_8__* var; int forest; TYPE_6__ point; TYPE_5__* begin; TYPE_2__ block; TYPE_1__ addr; } ;
struct TYPE_32__ {int kind; TYPE_7__ u; struct TYPE_32__* next; struct TYPE_32__* prev; } ;
struct TYPE_31__ {scalar_t__ sclass; scalar_t__ type; double ref; } ;
struct TYPE_26__ {int x; } ;
struct TYPE_27__ {TYPE_3__ block; } ;
struct TYPE_28__ {TYPE_4__ u; } ;
struct TYPE_24__ {int (* local ) (TYPE_8__*) ;int (* gen ) (int ) ;int (* blockend ) (int *) ;int (* blockbeg ) (int *) ;int (* address ) (int ,int ,int ) ;int (* stabsym ) (TYPE_8__*) ;int wants_dag; } ;
struct TYPE_22__ {TYPE_9__* next; } ;
typedef TYPE_8__* Symbol ;
typedef int Coordinate ;
typedef TYPE_9__* Code ;





 int CODE ;


 TYPE_21__* IR ;




 int asgn (TYPE_8__*,int ) ;
 int assert (int ) ;
 scalar_t__ assignargs ;
 TYPE_19__ codehead ;
 TYPE_9__* codelist ;
 scalar_t__ errcnt ;
 int fixup (int ) ;
 scalar_t__ glevel ;
 int idtree (TYPE_8__*) ;
 int prune (int ) ;
 int prunetemps ;
 int src ;
 int stub1 (TYPE_8__*) ;
 int stub2 (TYPE_8__*) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int *) ;
 int stub5 (TYPE_8__*) ;
 int stub6 (TYPE_8__*) ;
 int stub7 (int *) ;
 int stub8 (int ) ;
 int stub9 (TYPE_8__*) ;
 int swtoseg (int ) ;
 int walk (int ,int ,int ) ;

void gencode(Symbol caller[], Symbol callee[]) {
 Code cp;
 Coordinate save;

 if (prunetemps == -1)
  prunetemps = !IR->wants_dag;
 save = src;
 if (assignargs) {
  int i;
  Symbol p, q;
  cp = codehead.next->next;
  codelist = codehead.next;
  for (i = 0; (p = callee[i]) != ((void*)0)
           && (q = caller[i]) != ((void*)0); i++)
   if (p->sclass != q->sclass || p->type != q->type)
    walk(asgn(p, idtree(q)), 0, 0);
  codelist->next = cp;
  cp->prev = codelist;
 }
 if (glevel && IR->stabsym) {
  int i;
  Symbol p, q;
  for (i = 0; (p = callee[i]) != ((void*)0)
           && (q = caller[i]) != ((void*)0); i++) {
   (*IR->stabsym)(p);
   if (p->sclass != q->sclass || p->type != q->type)
    (*IR->stabsym)(q);
  }
  swtoseg(CODE);
 }
 cp = codehead.next;
 for ( ; errcnt <= 0 && cp; cp = cp->next)
  switch (cp->kind) {
  case 136: (*IR->address)(cp->u.addr.sym, cp->u.addr.base,
           cp->u.addr.offset); break;
  case 135: {
           Symbol *p = cp->u.block.locals;
           (*IR->blockbeg)(&cp->u.block.x);
           for ( ; *p; p++)
            if ((*p)->ref != 0.0)
             (*IR->local)(*p);
            else if (glevel) (*IR->local)(*p);
          }
 break;
  case 134: (*IR->blockend)(&cp->u.begin->u.block.x); break;
  case 133: src = cp->u.point.src; break;
  case 132: case 131:
  case 130: if (prunetemps)
           cp->u.forest = prune(cp->u.forest);
          fixup(cp->u.forest);
          cp->u.forest = (*IR->gen)(cp->u.forest); break;
  case 129: (*IR->local)(cp->u.var); break;
  case 128: break;
  default: assert(0);
  }
 src = save;
}
