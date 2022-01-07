
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stack_pos {int member_1; int member_0; } ;
struct TYPE_3__ {int curr_frame; int stk_top; } ;
typedef TYPE_1__ jq_state ;



struct stack_pos stack_get_pos(jq_state* jq) {
  struct stack_pos sp = {jq->stk_top, jq->curr_frame};
  return sp;
}
