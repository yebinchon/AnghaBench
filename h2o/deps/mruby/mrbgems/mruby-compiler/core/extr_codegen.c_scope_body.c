
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int cdr; int car; } ;
typedef TYPE_2__ node ;
struct TYPE_15__ {TYPE_1__* irep; int iseq; scalar_t__ sp; int mrb; } ;
typedef TYPE_3__ codegen_scope ;
struct TYPE_13__ {int rlen; } ;


 int OP_RETURN ;
 int OP_STOP ;
 int VAL ;
 int codegen (TYPE_3__*,int ,int ) ;
 int codegen_error (TYPE_3__*,char*) ;
 int gen_return (TYPE_3__*,int ,scalar_t__) ;
 int genop_0 (TYPE_3__*,int ) ;
 int scope_finish (TYPE_3__*) ;
 TYPE_3__* scope_new (int ,TYPE_3__*,int ) ;

__attribute__((used)) static int
scope_body(codegen_scope *s, node *tree, int val)
{
  codegen_scope *scope = scope_new(s->mrb, s, tree->car);
  if (scope == ((void*)0)) {
    codegen_error(s, "unexpected scope");
  }

  codegen(scope, tree->cdr, VAL);
  gen_return(scope, OP_RETURN, scope->sp-1);
  if (!s->iseq) {
    genop_0(scope, OP_STOP);
  }
  scope_finish(scope);
  if (!s->irep) {

    return 0;
  }
  return s->irep->rlen - 1;
}
