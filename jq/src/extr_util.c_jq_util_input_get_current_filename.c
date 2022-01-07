
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jv ;
struct TYPE_2__ {int current_filename; } ;
typedef TYPE_1__ jq_util_input_state ;
typedef int jq_state ;
typedef scalar_t__ jq_input_cb ;


 int jq_get_input_cb (int *,scalar_t__*,void**) ;
 scalar_t__ jq_util_input_next_input_cb ;
 int jv_copy (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_string (char*) ;

jv jq_util_input_get_current_filename(jq_state* jq) {
  jq_input_cb cb=((void*)0);
  void *cb_data=((void*)0);
  jq_get_input_cb(jq, &cb, &cb_data);
  if (cb != jq_util_input_next_input_cb)
    return jv_invalid_with_msg(jv_string("Unknown input filename"));
  jq_util_input_state *s = (jq_util_input_state *)cb_data;
  jv v = jv_copy(s->current_filename);
  return v;
}
