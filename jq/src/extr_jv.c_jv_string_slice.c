
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_string (char*) ;
 int jv_string_empty (int) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_sized (char const*,int) ;
 char* jv_string_value (int ) ;
 int jvp_clamp_slice_params (int,int*,int*) ;
 char* jvp_utf8_next (char const*,char const*,int*) ;

jv jv_string_slice(jv j, int start, int end) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  const char *s = jv_string_value(j);
  int len = jv_string_length_bytes(jv_copy(j));
  int i;
  const char *p, *e;
  int c;
  jv res;

  jvp_clamp_slice_params(len, &start, &end);
  assert(0 <= start && start <= end && end <= len);


  for (p = s, i = 0; i < start; i++) {
    p = jvp_utf8_next(p, s + len, &c);
    if (p == ((void*)0)) {
      jv_free(j);
      return jv_string_empty(16);
    }
    if (c == -1) {
      jv_free(j);
      return jv_invalid_with_msg(jv_string("Invalid UTF-8 string"));
    }
  }

  for (e = p; e != ((void*)0) && i < end; i++) {
    e = jvp_utf8_next(e, s + len, &c);
    if (e == ((void*)0)) {
      e = s + len;
      break;
    }
    if (c == -1) {
      jv_free(j);
      return jv_invalid_with_msg(jv_string("Invalid UTF-8 string"));
    }
  }
  res = jv_string_sized(p, e - p);
  jv_free(j);
  return res;
}
