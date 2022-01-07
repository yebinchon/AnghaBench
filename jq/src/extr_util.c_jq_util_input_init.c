
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jq_util_msg_cb ;
struct TYPE_4__ {void* current_filename; void* slurped; void* err_cb_data; int * err_cb; } ;
typedef TYPE_1__ jq_util_input_state ;


 int * fprinter ;
 void* jv_invalid () ;
 TYPE_1__* jv_mem_calloc (int,int) ;
 void* stderr ;

jq_util_input_state *jq_util_input_init(jq_util_msg_cb err_cb, void *err_cb_data) {
  if (err_cb == ((void*)0)) {
    err_cb = fprinter;
    err_cb_data = stderr;
  }
  jq_util_input_state *new_state = jv_mem_calloc(1, sizeof(*new_state));
  new_state->err_cb = err_cb;
  new_state->err_cb_data = err_cb_data;
  new_state->slurped = jv_invalid();
  new_state->current_filename = jv_invalid();

  return new_state;
}
