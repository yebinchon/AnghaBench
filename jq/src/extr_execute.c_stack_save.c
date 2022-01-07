
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct stack_pos {int saved_curr_frame; int saved_data_stack; } ;
struct forkpoint {int * return_address; int subexp_nest; int value_at_path; int path_len; int saved_curr_frame; int saved_data_stack; } ;
struct TYPE_3__ {int curr_frame; int stk_top; int subexp_nest; int value_at_path; int path; int fork_top; int stk; } ;
typedef TYPE_1__ jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 struct forkpoint* stack_block (int *,int ) ;
 int stack_push_block (int *,int ,int) ;

void stack_save(jq_state *jq, uint16_t* retaddr, struct stack_pos sp){
  jq->fork_top = stack_push_block(&jq->stk, jq->fork_top, sizeof(struct forkpoint));
  struct forkpoint* fork = stack_block(&jq->stk, jq->fork_top);
  fork->saved_data_stack = jq->stk_top;
  fork->saved_curr_frame = jq->curr_frame;
  fork->path_len =
    jv_get_kind(jq->path) == JV_KIND_ARRAY ? jv_array_length(jv_copy(jq->path)) : 0;
  fork->value_at_path = jv_copy(jq->value_at_path);
  fork->subexp_nest = jq->subexp_nest;
  fork->return_address = retaddr;
  jq->stk_top = sp.saved_data_stack;
  jq->curr_frame = sp.saved_curr_frame;
}
