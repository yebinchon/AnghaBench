
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_regex_special (char const) ;

__attribute__((used)) static int is_fixed(const char *s, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  if (is_regex_special(s[i]))
   return 0;
 }

 return 1;
}
