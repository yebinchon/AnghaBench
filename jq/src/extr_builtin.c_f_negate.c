
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_NUMBER ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_number (int ) ;
 int jv_number_value (int ) ;
 int type_error (int ,char*) ;

__attribute__((used)) static jv f_negate(jq_state *jq, jv input) {
  if (jv_get_kind(input) != JV_KIND_NUMBER) {
    return type_error(input, "cannot be negated");
  }
  jv ret = jv_number(-jv_number_value(input));
  jv_free(input);
  return ret;
}
