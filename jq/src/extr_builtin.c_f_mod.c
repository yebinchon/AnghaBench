
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;
typedef scalar_t__ intmax_t ;


 scalar_t__ JV_KIND_NUMBER ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_number (scalar_t__) ;
 scalar_t__ jv_number_value (int ) ;
 int type_error2 (int ,int ,char*) ;

__attribute__((used)) static jv f_mod(jq_state *jq, jv input, jv a, jv b) {
  jv_free(input);
  if (jv_get_kind(a) == JV_KIND_NUMBER && jv_get_kind(b) == JV_KIND_NUMBER) {
    if ((intmax_t)jv_number_value(b) == 0)
      return type_error2(a, b, "cannot be divided (remainder) because the divisor is zero");
    jv r = jv_number((intmax_t)jv_number_value(a) % (intmax_t)jv_number_value(b));
    jv_free(a);
    jv_free(b);
    return r;
  } else {
    return type_error2(a, b, "cannot be divided (remainder)");
  }
}
