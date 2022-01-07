
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;
typedef int (* jq_input_cb ) (int *,void*) ;


 int jq_get_input_cb (int *,int (*) (int *,void*),void**) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_invalid_has_msg (int ) ;
 int jv_invalid_with_msg (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_string (char*) ;

__attribute__((used)) static jv f_input(jq_state *jq, jv input) {
  jv_free(input);
  jq_input_cb cb;
  void *data;
  jq_get_input_cb(jq, &cb, &data);
  if (cb == ((void*)0))
    return jv_invalid_with_msg(jv_string("break"));
  jv v = cb(jq, data);
  if (jv_is_valid(v) || jv_invalid_has_msg(jv_copy(v)))
    return v;
  return jv_invalid_with_msg(jv_string("break"));
}
