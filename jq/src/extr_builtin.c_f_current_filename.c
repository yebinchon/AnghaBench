
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jq_util_input_get_current_filename (int *) ;
 int jv_free (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_null () ;

__attribute__((used)) static jv f_current_filename(jq_state *jq, jv a) {
  jv_free(a);

  jv r = jq_util_input_get_current_filename(jq);
  if (jv_is_valid(r))
    return r;
  jv_free(r);
  return jv_null();
}
