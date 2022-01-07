
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int jv ;


 int jvp_string_append (int ,char*,int) ;
 int jvp_utf8_encode (int ,char*) ;

jv jv_string_append_codepoint(jv a, uint32_t c) {
  char buf[5];
  int len = jvp_utf8_encode(c, buf);
  a = jvp_string_append(a, buf, len);
  return a;
}
