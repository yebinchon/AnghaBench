
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Tree ;
struct TYPE_5__ {char name; int type; } ;
struct TYPE_4__ {TYPE_3__** syms; int op; TYPE_3__** kids; int count; } ;
typedef TYPE_1__* Node ;
typedef int FILE ;


 scalar_t__ CALL ;
 int NELEMS (TYPE_3__**) ;
 int fprint (int *,char*,...) ;
 scalar_t__ generic (int ) ;
 int nodeid (int ) ;
 int opname (int ) ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void printnode(Node p, int fd, int lev) {
 if (p) {
  FILE *f = fd == 1 ? stdout : stderr;
  int i, id = nodeid((Tree)p);
  fprint(f, "%c%d%s", lev == 0 ? '\'' : '#', id,
   &"   "[id < 10 ? 0 : id < 100 ? 1 : 2]);
  fprint(f, "%s count=%d", opname(p->op), p->count);
  for (i = 0; i < NELEMS(p->kids) && p->kids[i]; i++)
   fprint(f, " #%d", nodeid((Tree)p->kids[i]));
  if (generic(p->op) == CALL && p->syms[0] && p->syms[0]->type)
   fprint(f, " {%t}", p->syms[0]->type);
  else
   for (i = 0; i < NELEMS(p->syms) && p->syms[i]; i++)
    if (p->syms[i]->name)
     fprint(f, " %s", p->syms[i]->name);
    else
     fprint(f, " %p", p->syms[i]);
  fprint(f, "\n");
 }
}
