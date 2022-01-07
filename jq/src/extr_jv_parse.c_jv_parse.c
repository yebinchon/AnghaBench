
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_parse_sized (char const*,int ) ;
 int strlen (char const*) ;

jv jv_parse(const char* string) {
  return jv_parse_sized(string, strlen(string));
}
