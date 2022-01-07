
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_STRING ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_number (int ) ;
 int jv_string_length_bytes (int ) ;
 int type_error (int ,char*) ;

__attribute__((used)) static jv f_utf8bytelength(jq_state *jq, jv input) {
  if (jv_get_kind(input) != JV_KIND_STRING)
    return type_error(input, "only strings have UTF-8 byte length");
  return jv_number(jv_string_length_bytes(input));
}
