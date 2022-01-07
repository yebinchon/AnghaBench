
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_array_append (int ,int ) ;
 int jv_array_sized (int) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_number (int) ;
 int jv_string_length_bytes (int ) ;
 char* jv_string_value (int ) ;
 char* jvp_utf8_next (char const*,char const*,int*) ;

jv jv_string_explode(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  const char* i = jv_string_value(j);
  int len = jv_string_length_bytes(jv_copy(j));
  const char* end = i + len;
  jv a = jv_array_sized(len);
  int c;
  while ((i = jvp_utf8_next(i, end, &c)))
    a = jv_array_append(a, jv_number(c));
  jv_free(j);
  return a;
}
