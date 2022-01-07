
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
 int jv_null () ;
 int * stack_block (int *,int ) ;
 int stack_pop_block (int *,int ,int) ;
 int stack_pop_will_free (int *,int ) ;

jv stack_popn(jq_state *jq) {
  jv* sval = stack_block(&jq->stk, jq->stk_top);
  jv val = *sval;
  if (!stack_pop_will_free(&jq->stk, jq->stk_top)) {
    *sval = jv_null();
  }
  jq->stk_top = stack_pop_block(&jq->stk, jq->stk_top, sizeof(jv));
  assert(jv_is_valid(val));
  return val;
}
