
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_string_length_bytes (int ) ;
 char* jv_string_value (int ) ;
 char* jvp_utf8_next (char const*,char const*,int*) ;

int jv_string_length_codepoints(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  const char* i = jv_string_value(j);
  const char* end = i + jv_string_length_bytes(jv_copy(j));
  int c = 0, len = 0;
  while ((i = jvp_utf8_next(i, end, &c))) len++;
  jv_free(j);
  return len;
}
