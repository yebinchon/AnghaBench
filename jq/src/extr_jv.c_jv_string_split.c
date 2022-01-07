
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 char* _jq_memmem (char const*,int,char const*,int) ;
 int assert (int) ;
 int jv_array () ;
 int jv_array_append (int ,int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_get_refcnt (int ) ;
 int jv_string (char*) ;
 int jv_string_append_codepoint (int ,int) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_sized (char const*,int) ;
 char* jv_string_value (int ) ;
 char* jvp_utf8_next (char const*,char const*,int*) ;

jv jv_string_split(jv j, jv sep) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  assert(JVP_HAS_KIND(sep, JV_KIND_STRING));
  const char *jstr = jv_string_value(j);
  const char *jend = jstr + jv_string_length_bytes(jv_copy(j));
  const char *sepstr = jv_string_value(sep);
  const char *p, *s;
  int seplen = jv_string_length_bytes(jv_copy(sep));
  jv a = jv_array();

  assert(jv_get_refcnt(a) == 1);

  if (seplen == 0) {
    int c;
    while ((jstr = jvp_utf8_next(jstr, jend, &c)))
      a = jv_array_append(a, jv_string_append_codepoint(jv_string(""), c));
  } else {
    for (p = jstr; p < jend; p = s + seplen) {
      s = _jq_memmem(p, jend - p, sepstr, seplen);
      if (s == ((void*)0))
        s = jend;
      a = jv_array_append(a, jv_string_sized(p, s - p));

      if (s + seplen == jend && seplen != 0)
        a = jv_array_append(a, jv_string(""));
    }
  }
  jv_free(j);
  jv_free(sep);
  return a;
}
