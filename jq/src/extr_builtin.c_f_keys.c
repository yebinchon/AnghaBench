
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 scalar_t__ JV_KIND_OBJECT ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_keys (int ) ;
 int type_error (int ,char*) ;

__attribute__((used)) static jv f_keys(jq_state *jq, jv input) {
  if (jv_get_kind(input) == JV_KIND_OBJECT || jv_get_kind(input) == JV_KIND_ARRAY) {
    return jv_keys(input);
  } else {
    return type_error(input, "has no keys");
  }
}
