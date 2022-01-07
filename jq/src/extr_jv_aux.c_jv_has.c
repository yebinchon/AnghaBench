
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ JV_KIND_ARRAY ;
 scalar_t__ JV_KIND_NULL ;
 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ JV_KIND_OBJECT ;
 scalar_t__ JV_KIND_STRING ;
 int assert (int ) ;
 int jv_array_get (int ,int) ;
 int jv_bool (int ) ;
 int jv_false () ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_is_valid (int ) ;
 int jv_kind_name (scalar_t__) ;
 scalar_t__ jv_number_value (int ) ;
 int jv_object_get (int ,int ) ;
 int jv_string_fmt (char*,int ,int ) ;

jv jv_has(jv t, jv k) {
  assert(jv_is_valid(t));
  assert(jv_is_valid(k));
  jv ret;
  if (jv_get_kind(t) == JV_KIND_NULL) {
    jv_free(t);
    jv_free(k);
    ret = jv_false();
  } else if (jv_get_kind(t) == JV_KIND_OBJECT &&
             jv_get_kind(k) == JV_KIND_STRING) {
    jv elem = jv_object_get(t, k);
    ret = jv_bool(jv_is_valid(elem));
    jv_free(elem);
  } else if (jv_get_kind(t) == JV_KIND_ARRAY &&
             jv_get_kind(k) == JV_KIND_NUMBER) {
    jv elem = jv_array_get(t, (int)jv_number_value(k));
    ret = jv_bool(jv_is_valid(elem));
    jv_free(k);
    jv_free(elem);
  } else {
    ret = jv_invalid_with_msg(jv_string_fmt("Cannot check whether %s has a %s key",
                                            jv_kind_name(jv_get_kind(t)),
                                            jv_kind_name(jv_get_kind(k))));
    jv_free(t);
    jv_free(k);
  }
  return ret;
}
