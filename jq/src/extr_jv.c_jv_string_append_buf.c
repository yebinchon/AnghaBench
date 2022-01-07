
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_string_concat (int ,int ) ;
 int jvp_string_append (int ,char const*,int) ;
 int jvp_string_copy_replace_bad (char const*,int) ;
 scalar_t__ jvp_utf8_is_valid (char const*,char const*) ;

jv jv_string_append_buf(jv a, const char* buf, int len) {
  if (jvp_utf8_is_valid(buf, buf+len)) {
    a = jvp_string_append(a, buf, len);
  } else {
    jv b = jvp_string_copy_replace_bad(buf, len);
    a = jv_string_concat(a, b);
  }
  return a;
}
