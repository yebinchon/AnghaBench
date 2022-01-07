
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 char* _jq_memmem (char const*,int,char const*,int) ;
 int assert (int ) ;
 int jv_array () ;
 int jv_array_append (int ,int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_number (int) ;
 int jv_string_length_bytes (int ) ;
 char* jv_string_value (int ) ;

jv jv_string_indexes(jv j, jv k) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  assert(JVP_HAS_KIND(k, JV_KIND_STRING));
  const char *jstr = jv_string_value(j);
  const char *idxstr = jv_string_value(k);
  const char *p;
  int jlen = jv_string_length_bytes(jv_copy(j));
  int idxlen = jv_string_length_bytes(jv_copy(k));
  jv a = jv_array();

  if (idxlen != 0) {
    p = jstr;
    while ((p = _jq_memmem(p, (jstr + jlen) - p, idxstr, idxlen)) != ((void*)0)) {
      a = jv_array_append(a, jv_number(p - jstr));
      p += idxlen;
    }
  }
  jv_free(j);
  jv_free(k);
  return a;
}
