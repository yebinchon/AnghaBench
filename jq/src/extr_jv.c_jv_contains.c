
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int JV_KIND_OBJECT ;
 int JV_KIND_STRING ;
 scalar_t__ _jq_memmem (int ,int,int ,int) ;
 int jv_copy (int ) ;
 int jv_equal (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_value (int ) ;
 int jvp_array_contains (int ,int ) ;
 int jvp_object_contains (int ,int ) ;

int jv_contains(jv a, jv b) {
  int r = 1;
  if (jv_get_kind(a) != jv_get_kind(b)) {
    r = 0;
  } else if (JVP_HAS_KIND(a, JV_KIND_OBJECT)) {
    r = jvp_object_contains(a, b);
  } else if (JVP_HAS_KIND(a, JV_KIND_ARRAY)) {
    r = jvp_array_contains(a, b);
  } else if (JVP_HAS_KIND(a, JV_KIND_STRING)) {
    int b_len = jv_string_length_bytes(jv_copy(b));
    if (b_len != 0) {
      r = _jq_memmem(jv_string_value(a), jv_string_length_bytes(jv_copy(a)),
                     jv_string_value(b), b_len) != 0;
    } else {
      r = 1;
    }
  } else {
    r = jv_equal(jv_copy(a), jv_copy(b));
  }
  jv_free(a);
  jv_free(b);
  return r;
}
