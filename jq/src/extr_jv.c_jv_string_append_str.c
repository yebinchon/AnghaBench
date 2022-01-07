
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_string_append_buf (int ,char const*,int ) ;
 int strlen (char const*) ;

jv jv_string_append_str(jv a, const char* str) {
  return jv_string_append_buf(a, str, strlen(str));
}
