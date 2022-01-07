
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 scalar_t__ JV_KIND_NULL ;
 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ JV_KIND_OBJECT ;
 scalar_t__ JV_KIND_STRING ;
 int jv_array_concat (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_number (scalar_t__) ;
 scalar_t__ jv_number_value (int ) ;
 int jv_object_merge (int ,int ) ;
 int jv_string_concat (int ,int ) ;
 int type_error2 (int ,int ,char*) ;

__attribute__((used)) static jv f_plus(jq_state *jq, jv input, jv a, jv b) {
  jv_free(input);
  if (jv_get_kind(a) == JV_KIND_NULL) {
    jv_free(a);
    return b;
  } else if (jv_get_kind(b) == JV_KIND_NULL) {
    jv_free(b);
    return a;
  } else if (jv_get_kind(a) == JV_KIND_NUMBER && jv_get_kind(b) == JV_KIND_NUMBER) {
    jv r = jv_number(jv_number_value(a) +
                     jv_number_value(b));
    jv_free(a);
    jv_free(b);
    return r;
  } else if (jv_get_kind(a) == JV_KIND_STRING && jv_get_kind(b) == JV_KIND_STRING) {
    return jv_string_concat(a, b);
  } else if (jv_get_kind(a) == JV_KIND_ARRAY && jv_get_kind(b) == JV_KIND_ARRAY) {
    return jv_array_concat(a, b);
  } else if (jv_get_kind(a) == JV_KIND_OBJECT && jv_get_kind(b) == JV_KIND_OBJECT) {
    return jv_object_merge(a, b);
  } else {
    return type_error2(a, b, "cannot be added");
  }
}
