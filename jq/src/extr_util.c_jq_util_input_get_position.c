
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jv ;
struct TYPE_2__ {scalar_t__ current_line; int current_filename; } ;
typedef TYPE_1__ jq_util_input_state ;
typedef int jq_state ;
typedef scalar_t__ jq_input_cb ;


 scalar_t__ JV_KIND_STRING ;
 int assert (int) ;
 int jq_get_input_cb (int *,scalar_t__*,void**) ;
 scalar_t__ jq_util_input_next_input_cb ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_string (char*) ;
 int jv_string_fmt (char*,int ,unsigned long) ;
 int jv_string_value (int ) ;

jv jq_util_input_get_position(jq_state *jq) {
  jq_input_cb cb = ((void*)0);
  void *cb_data = ((void*)0);
  jq_get_input_cb(jq, &cb, &cb_data);
  assert(cb == jq_util_input_next_input_cb);
  if (cb != jq_util_input_next_input_cb)
    return jv_invalid_with_msg(jv_string("Invalid jq_util_input API usage"));
  jq_util_input_state *s = (jq_util_input_state *)cb_data;




  if (jv_get_kind(s->current_filename) != JV_KIND_STRING)
    return jv_string("<unknown>");

  jv v = jv_string_fmt("%s:%lu", jv_string_value(s->current_filename), (unsigned long)s->current_line);
  return v;
}
