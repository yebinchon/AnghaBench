
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * nomem_handler_data; int * nomem_handler; void* value_at_path; void* path; int attrs; int err_cb_data; int err_cb; void* error_message; void* exit_code; scalar_t__ halted; void* error; scalar_t__ curr_frame; scalar_t__ fork_top; scalar_t__ stk_top; int stk; scalar_t__ next_label; scalar_t__ bc; } ;
typedef TYPE_1__ jq_state ;


 int default_err_cb ;
 void* jv_invalid () ;
 TYPE_1__* jv_mem_alloc_unguarded (int) ;
 void* jv_null () ;
 int jv_object () ;
 int stack_init (int *) ;
 int stderr ;

jq_state *jq_init(void) {
  jq_state *jq;
  jq = jv_mem_alloc_unguarded(sizeof(*jq));
  if (jq == ((void*)0))
    return ((void*)0);

  jq->bc = 0;
  jq->next_label = 0;

  stack_init(&jq->stk);
  jq->stk_top = 0;
  jq->fork_top = 0;
  jq->curr_frame = 0;
  jq->error = jv_null();

  jq->halted = 0;
  jq->exit_code = jv_invalid();
  jq->error_message = jv_invalid();

  jq->err_cb = default_err_cb;
  jq->err_cb_data = stderr;

  jq->attrs = jv_object();
  jq->path = jv_null();
  jq->value_at_path = jv_null();

  jq->nomem_handler = ((void*)0);
  jq->nomem_handler_data = ((void*)0);
  return jq;
}
