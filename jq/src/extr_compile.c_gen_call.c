
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_7__ {TYPE_2__ arglist; int nactuals; } ;


 int CALL_JQ ;
 int block_count_actuals (TYPE_2__) ;
 TYPE_2__ gen_op_unbound (int ,char const*) ;

block gen_call(const char* name, block args) {
  block b = gen_op_unbound(CALL_JQ, name);
  b.first->arglist = args;
  b.first->nactuals = block_count_actuals(b.first->arglist);
  return b;
}
