
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ JV_KIND_STRING ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_is_valid (int ) ;
 int jv_parse (int ) ;
 int jv_string_value (int ) ;
 int type_error (int ,char*) ;

__attribute__((used)) static jv f_tonumber(jq_state *jq, jv input) {
  if (jv_get_kind(input) == JV_KIND_NUMBER) {
    return input;
  }
  if (jv_get_kind(input) == JV_KIND_STRING) {
    jv parsed = jv_parse(jv_string_value(input));
    if (!jv_is_valid(parsed) || jv_get_kind(parsed) == JV_KIND_NUMBER) {
      jv_free(input);
      return parsed;
    }
  }
  return type_error(input, "cannot be parsed as a number");
}
