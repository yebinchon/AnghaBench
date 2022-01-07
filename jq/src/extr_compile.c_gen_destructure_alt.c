
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* first; } ;
struct TYPE_8__ {scalar_t__ op; TYPE_2__ subfn; struct TYPE_8__* next; } ;
typedef TYPE_1__ inst ;
typedef TYPE_2__ block ;


 int DESTRUCTURE_ALT ;
 scalar_t__ STOREV ;
 scalar_t__ STOREVN ;
 TYPE_2__ inst_block (TYPE_1__*) ;
 TYPE_1__* inst_new (int ) ;

block gen_destructure_alt(block matcher) {
  for (inst *i = matcher.first; i; i = i->next) {
    if (i->op == STOREV) {
      i->op = STOREVN;
    }
  }
  inst* i = inst_new(DESTRUCTURE_ALT);
  i->subfn = matcher;
  return inst_block(i);
}
