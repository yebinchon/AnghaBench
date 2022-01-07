
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jvp_string_copy_replace_bad (char const*,int) ;
 int jvp_string_new (char const*,int) ;
 scalar_t__ jvp_utf8_is_valid (char const*,char const*) ;

jv jv_string_sized(const char* str, int len) {
  return
    jvp_utf8_is_valid(str, str+len) ?
    jvp_string_new(str, len) :
    jvp_string_copy_replace_bad(str, len);
}
