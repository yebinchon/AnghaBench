
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_STRING ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_string (char*) ;
 int jv_string_explode (int ) ;
 int ret_error (int ,int ) ;

__attribute__((used)) static jv f_string_explode(jq_state *jq, jv a) {
  if (jv_get_kind(a) != JV_KIND_STRING) {
    return ret_error(a, jv_string("explode input must be a string"));
  }
  return jv_string_explode(a);
}
