
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int label; } ;
struct TYPE_7__ {TYPE_1__ l; } ;
struct TYPE_8__ {char src; int defined; TYPE_2__ u; int name; int scope; } ;
typedef TYPE_3__* Symbol ;


 int FUNC ;
 int LABELS ;
 int definelab (int ) ;
 int error (char*,int ,char*) ;
 int expect (char) ;
 int genlabel (int) ;
 int gettok () ;
 TYPE_3__* install (int ,int *,int ,int ) ;
 TYPE_3__* lookup (int ,int ) ;
 char src ;
 int stmtlabs ;
 int t ;
 int token ;

__attribute__((used)) static void stmtlabel(void) {
 Symbol p = lookup(token, stmtlabs);

 if (p == ((void*)0)) {
  p = install(token, &stmtlabs, 0, FUNC);
  p->scope = LABELS;
  p->u.l.label = genlabel(1);
  p->src = src;
 }
 if (p->defined)
  error("redefinition of label `%s' previously defined at %w\n", p->name, &p->src);

 p->defined = 1;
 definelab(p->u.l.label);
 t = gettok();
 expect(':');
}
