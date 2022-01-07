
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ op; int bound_by; struct TYPE_11__* next; } ;
typedef TYPE_1__ inst ;
struct TYPE_12__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;


 TYPE_2__ BLOCK (TYPE_2__,TYPE_2__) ;
 int OP_HAS_VARIABLE ;
 scalar_t__ STOREV ;
 scalar_t__ STOREVN ;
 int block_bind_subblock (int ,TYPE_2__,int ,int ) ;
 int inst_block (TYPE_1__*) ;

__attribute__((used)) static block bind_matcher(block matcher, block body) {



  for (inst* i = matcher.first; i; i = i->next) {
    if ((i->op == STOREV || i->op == STOREVN) && !i->bound_by)
      block_bind_subblock(inst_block(i), body, OP_HAS_VARIABLE, 0);
  }
  return BLOCK(matcher, body);
}
