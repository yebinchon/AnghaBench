
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int last; int first; } ;
typedef TYPE_1__ block ;


 TYPE_1__ BLOCK (TYPE_1__,TYPE_1__,...) ;
 int DUP ;
 int FORK_OPT ;
 int JUMP ;
 int POP ;
 TYPE_1__ gen_op_simple (int ) ;
 TYPE_1__ gen_op_target (int ,TYPE_1__) ;

block gen_try(block exp, block handler) {
  if (!handler.first && !handler.last)

    handler = BLOCK(gen_op_simple(DUP), gen_op_simple(POP), handler);
  exp = BLOCK(exp, gen_op_target(JUMP, handler));
  return BLOCK(gen_op_target(FORK_OPT, exp), exp, handler);
}
