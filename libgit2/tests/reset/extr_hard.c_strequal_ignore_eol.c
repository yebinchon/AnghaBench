
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strequal_ignore_eol(const char *exp, const char *str)
{
 while (*exp && *str) {
  if (*exp != *str) {
   while (*exp == '\r' || *exp == '\n') ++exp;
   while (*str == '\r' || *str == '\n') ++str;
   if (*exp != *str)
    return 0;
  } else {
   exp++; str++;
  }
 }
 return (!*exp && !*str);
}
