
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
 int fabs (int ) ;
 int jv_array_length (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_number (int ) ;
 int jv_number_value (int ) ;
 int jv_object_length (int ) ;
 int jv_string_length_codepoints (int ) ;
 int type_error (int ,char*) ;

__attribute__((used)) static jv f_length(jq_state *jq, jv input) {
  if (jv_get_kind(input) == JV_KIND_ARRAY) {
    return jv_number(jv_array_length(input));
  } else if (jv_get_kind(input) == JV_KIND_OBJECT) {
    return jv_number(jv_object_length(input));
  } else if (jv_get_kind(input) == JV_KIND_STRING) {
    return jv_number(jv_string_length_codepoints(input));
  } else if (jv_get_kind(input) == JV_KIND_NUMBER) {
    jv r = jv_number(fabs(jv_number_value(input)));
    jv_free(input);
    return r;
  } else if (jv_get_kind(input) == JV_KIND_NULL) {
    jv_free(input);
    return jv_number(0);
  } else {
    return type_error(input, "has no length");
  }
}
