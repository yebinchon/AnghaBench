
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stk_top; scalar_t__ fork_top; scalar_t__ curr_frame; scalar_t__ subexp_nest; void* value_at_path; void* path; void* error_message; void* exit_code; scalar_t__ halted; void* error; int stk; } ;
typedef TYPE_1__ jq_state ;


 scalar_t__ JV_KIND_INVALID ;
 int assert (int) ;
 int jv_free (void*) ;
 scalar_t__ jv_get_kind (void*) ;
 void* jv_null () ;
 int stack_reset (int *) ;
 scalar_t__ stack_restore (TYPE_1__*) ;

__attribute__((used)) static void jq_reset(jq_state *jq) {
  while (stack_restore(jq)) {}

  assert(jq->stk_top == 0);
  assert(jq->fork_top == 0);
  assert(jq->curr_frame == 0);
  stack_reset(&jq->stk);
  jv_free(jq->error);
  jq->error = jv_null();

  jq->halted = 0;
  jv_free(jq->exit_code);
  jv_free(jq->error_message);
  if (jv_get_kind(jq->path) != JV_KIND_INVALID)
    jv_free(jq->path);
  jq->path = jv_null();
  jv_free(jq->value_at_path);
  jq->value_at_path = jv_null();
  jq->subexp_nest = 0;
}
