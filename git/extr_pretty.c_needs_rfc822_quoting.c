
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_rfc822_special (char const) ;

__attribute__((used)) static int needs_rfc822_quoting(const char *s, int len)
{
 int i;
 for (i = 0; i < len; i++)
  if (is_rfc822_special(s[i]))
   return 1;
 return 0;
}
