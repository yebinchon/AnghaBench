
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
typedef TYPE_2__* Term ;
struct TYPE_6__ {scalar_t__ kind; int esn; } ;
struct TYPE_5__ {int nterms; struct TYPE_5__* right; struct TYPE_5__* left; TYPE_2__* op; } ;


 scalar_t__ TERM ;
 int print (char*,char*,int ,char*,TYPE_2__*) ;
 char* stringf (char*,char*) ;

__attribute__((used)) static void emittest(Tree t, char *v, char *suffix) {
 Term p = t->op;

 if (p->kind == TERM) {
  print("%3%s->op == %d%s/* %S */\n", v, p->esn,
   t->nterms > 1 ? " && " : suffix, p);
  if (t->left)
   emittest(t->left, stringf("LEFT_CHILD(%s)", v),
    t->right && t->right->nterms ? " && " : suffix);
  if (t->right)
   emittest(t->right, stringf("RIGHT_CHILD(%s)", v), suffix);
 }
}
