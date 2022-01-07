
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int JV_ARRAY (int ) ;
 scalar_t__ JV_KIND_ARRAY ;
 int jq_get_lib_dirs (int *) ;
 int jv_array_concat (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_is_valid (int ) ;
 int jv_string (char*) ;

__attribute__((used)) static jv default_search(jq_state *jq, jv value) {
  if (!jv_is_valid(value)) {

    jv_free(value);
    return jv_array_concat(JV_ARRAY(jv_string(".")), jq_get_lib_dirs(jq));
  }
  if (jv_get_kind(value) != JV_KIND_ARRAY)
    return JV_ARRAY(value);
  return value;
}
