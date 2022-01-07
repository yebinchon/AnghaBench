
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv ;
struct TYPE_3__ {int stk_top; int stk; } ;
typedef TYPE_1__ jq_state ;


 int assert (int ) ;
 int jv_is_valid (int ) ;
 int * stack_block (int *,int ) ;
 int stack_push_block (int *,int ,int) ;

void stack_push(jq_state *jq, jv val) {
  assert(jv_is_valid(val));
  jq->stk_top = stack_push_block(&jq->stk, jq->stk_top, sizeof(jv));
  jv* sval = stack_block(&jq->stk, jq->stk_top);
  *sval = val;
}
