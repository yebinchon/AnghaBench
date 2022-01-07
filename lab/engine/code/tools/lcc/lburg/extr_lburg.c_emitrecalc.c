
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* Term ;
struct TYPE_7__ {struct TYPE_7__* link; } ;
struct TYPE_6__ {scalar_t__ kind; int name; } ;
typedef TYPE_2__* Nonterm ;


 scalar_t__ TERM ;
 TYPE_2__* nts ;
 int print (char*,char*,...) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void emitrecalc(char *pre, Term root, Term kid) {
 if (root->kind == TERM && strncmp(root->name, "INDIR", 5) == 0
 && kid->kind == TERM && strcmp(kid->name, "VREGP" ) == 0) {
  Nonterm p;
  print("%sif (mayrecalc(a)) {\n", pre);
  print("%s%1struct %Pstate *q = a->syms[RX]->u.t.cse->x.state;\n", pre);
  for (p = nts; p; p = p->link) {
   print("%s%1if (q->cost[%P%S_NT] == 0) {\n", pre, p);
   print("%s%2p->cost[%P%S_NT] = 0;\n", pre, p);
   print("%s%2p->rule.%P%S = q->rule.%P%S;\n", pre, p, p);
   print("%s%1}\n", pre);
  }
  print("%s}\n", pre);
 }
}
