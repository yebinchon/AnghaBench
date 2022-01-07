
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* err_cb_data; int * err_cb; } ;
typedef TYPE_1__ jq_state ;
typedef int * jq_msg_cb ;


 int * default_err_cb ;
 void* stderr ;

void jq_set_error_cb(jq_state *jq, jq_msg_cb cb, void *data) {
  if (cb == ((void*)0)) {
    jq->err_cb = default_err_cb;
    jq->err_cb_data = stderr;
  } else {
    jq->err_cb = cb;
    jq->err_cb_data = data;
  }
}
