
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
typedef TYPE_2__* Term ;
struct TYPE_5__ {scalar_t__ kind; int arity; } ;
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; TYPE_2__* op; } ;


 scalar_t__ NONTERM ;
 int sprintf (char*,char*,int ,char*) ;
 char* stringf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *computekids(Tree t, char *v, char *bp, int *ip) {
 Term p = t->op;

 if (p->kind == NONTERM) {
  sprintf(bp, "\t\tkids[%d] = %s;\n", (*ip)++, v);
  bp += strlen(bp);
 } else if (p->arity > 0) {
  bp = computekids(t->left, stringf("LEFT_CHILD(%s)", v), bp, ip);
  if (p->arity == 2)
   bp = computekids(t->right, stringf("RIGHT_CHILD(%s)", v), bp, ip);
 }
 return bp;
}
