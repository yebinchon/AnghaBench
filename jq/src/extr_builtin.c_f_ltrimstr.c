
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_TRUE ;
 int f_startswith (int *,int ,int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_sized (scalar_t__,int) ;
 scalar_t__ jv_string_value (int ) ;

__attribute__((used)) static jv f_ltrimstr(jq_state *jq, jv input, jv left) {
  if (jv_get_kind(f_startswith(jq, jv_copy(input), jv_copy(left))) != JV_KIND_TRUE) {
    jv_free(left);
    return input;
  }




  int prefixlen = jv_string_length_bytes(left);
  jv res = jv_string_sized(jv_string_value(input) + prefixlen,
                           jv_string_length_bytes(jv_copy(input)) - prefixlen);
  jv_free(input);
  return res;
}
