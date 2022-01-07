
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_string (char*) ;
 int jv_string_implode (int ) ;
 int ret_error (int ,int ) ;

__attribute__((used)) static jv f_string_implode(jq_state *jq, jv a) {
  if (jv_get_kind(a) != JV_KIND_ARRAY) {
    return ret_error(a, jv_string("implode input must be an array"));
  }
  return jv_string_implode(a);
}
