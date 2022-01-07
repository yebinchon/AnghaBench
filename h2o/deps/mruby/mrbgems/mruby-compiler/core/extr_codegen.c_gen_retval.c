
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int car; } ;
typedef TYPE_1__ node ;
typedef int codegen_scope ;


 scalar_t__ NODE_SPLAT ;
 int OP_ARYDUP ;
 int VAL ;
 int codegen (int *,TYPE_1__*,int ) ;
 int cursp () ;
 int genop_1 (int *,int ,int ) ;
 scalar_t__ nint (int ) ;
 int pop () ;

__attribute__((used)) static void
gen_retval(codegen_scope *s, node *tree)
{
  if (nint(tree->car) == NODE_SPLAT) {
    codegen(s, tree, VAL);
    pop();
    genop_1(s, OP_ARYDUP, cursp());
  }
  else {
    codegen(s, tree, VAL);
    pop();
  }
}
