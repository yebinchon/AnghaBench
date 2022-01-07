
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* Tree ;
struct TYPE_12__ {int name; } ;
struct TYPE_10__ {TYPE_1__* sym; int v; TYPE_6__* field; } ;
struct TYPE_11__ {scalar_t__ op; int node; struct TYPE_11__** kids; TYPE_2__ u; int type; } ;
struct TYPE_9__ {int name; } ;
typedef int FILE ;


 scalar_t__ CNST ;
 scalar_t__ FIELD ;
 int NELEMS (TYPE_3__**) ;
 int fieldright (TYPE_6__*) ;
 int fieldsize (TYPE_6__*) ;
 int fprint (int *,char*,...) ;
 scalar_t__ generic (scalar_t__) ;
 int nodeid (TYPE_3__*) ;
 int opname (scalar_t__) ;
 int* printed (int) ;
 int * stderr ;
 int * stdout ;
 int vtoa (int ,int ) ;

__attribute__((used)) static void printtree1(Tree p, int fd, int lev) {
 FILE *f = fd == 1 ? stdout : stderr;
 int i;
 static char blanks[] = "                                                   ";

 if (p == 0 || *printed(i = nodeid(p)))
  return;
 fprint(f, "#%d%S%S", i, blanks, i < 10 ? 2 : i < 100 ? 1 : 0, blanks, lev);
 fprint(f, "%s %t", opname(p->op), p->type);
 *printed(i) = 1;
 for (i = 0; i < NELEMS(p->kids); i++)
  if (p->kids[i])
   fprint(f, " #%d", nodeid(p->kids[i]));
 if (p->op == FIELD && p->u.field)
  fprint(f, " %s %d..%d", p->u.field->name,
   fieldsize(p->u.field) + fieldright(p->u.field), fieldright(p->u.field));
 else if (generic(p->op) == CNST)
  fprint(f, " %s", vtoa(p->type, p->u.v));
 else if (p->u.sym)
  fprint(f, " %s", p->u.sym->name);
 if (p->node)
  fprint(f, " node=%p", p->node);
 fprint(f, "\n");
 for (i = 0; i < NELEMS(p->kids); i++)
  printtree1(p->kids[i], fd, lev + 1);
}
