
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_6__ {struct TYPE_6__** kids; int type; int op; } ;


 scalar_t__ INDIR ;
 int error (char*) ;
 scalar_t__ generic (int ) ;
 scalar_t__ unqual (int ) ;
 TYPE_1__* value (TYPE_1__*) ;
 scalar_t__ voidtype ;
 int warning (char*,int ) ;

Tree lvalue(Tree p) {
 if (generic(p->op) != INDIR) {
  error("lvalue required\n");
  return value(p);
 } else if (unqual(p->type) == voidtype)
  warning("`%t' used as an lvalue\n", p->type);
 return p->kids[0];
}
