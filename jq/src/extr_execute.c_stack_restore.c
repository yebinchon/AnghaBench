
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct forkpoint {scalar_t__ saved_data_stack; scalar_t__ saved_curr_frame; int path_len; int subexp_nest; int value_at_path; int * return_address; } ;
struct TYPE_5__ {scalar_t__ fork_top; scalar_t__ stk_top; scalar_t__ curr_frame; int stk; int subexp_nest; int value_at_path; int path; } ;
typedef TYPE_1__ jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 int assert (int) ;
 int frame_pop (TYPE_1__*) ;
 int jv_array_slice (int ,int ,int) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 struct forkpoint* stack_block (int *,scalar_t__) ;
 int stack_pop (TYPE_1__*) ;
 scalar_t__ stack_pop_block (int *,scalar_t__,int) ;
 scalar_t__ stack_pop_will_free (int *,scalar_t__) ;

uint16_t* stack_restore(jq_state *jq){
  while (!stack_pop_will_free(&jq->stk, jq->fork_top)) {
    if (stack_pop_will_free(&jq->stk, jq->stk_top)) {
      jv_free(stack_pop(jq));
    } else if (stack_pop_will_free(&jq->stk, jq->curr_frame)) {
      frame_pop(jq);
    } else {
      assert(0);
    }
  }

  if (jq->fork_top == 0) {
    return 0;
  }

  struct forkpoint* fork = stack_block(&jq->stk, jq->fork_top);
  uint16_t* retaddr = fork->return_address;
  jq->stk_top = fork->saved_data_stack;
  jq->curr_frame = fork->saved_curr_frame;
  int path_len = fork->path_len;
  if (jv_get_kind(jq->path) == JV_KIND_ARRAY) {
    assert(path_len >= 0);
    jq->path = jv_array_slice(jq->path, 0, path_len);
  } else {
    fork->path_len = 0;
  }
  jv_free(jq->value_at_path);
  jq->value_at_path = fork->value_at_path;
  jq->subexp_nest = fork->subexp_nest;
  jq->fork_top = stack_pop_block(&jq->stk, jq->fork_top, sizeof(struct forkpoint));
  return retaddr;
}
