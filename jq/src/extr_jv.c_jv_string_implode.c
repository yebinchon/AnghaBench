
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int JV_KIND_NUMBER ;
 int assert (int) ;
 int jv_array_get (int ,int) ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_number_value (int ) ;
 int jv_string_append_codepoint (int ,int) ;
 int jv_string_empty (int) ;

jv jv_string_implode(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_ARRAY));
  int len = jv_array_length(jv_copy(j));
  jv s = jv_string_empty(len);
  int i;

  assert(len >= 0);

  for (i = 0; i < len; i++) {
    jv n = jv_array_get(jv_copy(j), i);
    assert(JVP_HAS_KIND(n, JV_KIND_NUMBER));
    int nv = jv_number_value(n);
    jv_free(n);
    if (nv > 0x10FFFF)
      nv = 0xFFFD;
    s = jv_string_append_codepoint(s, nv);
  }

  jv_free(j);
  return s;
}
