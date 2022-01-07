
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static char last_non_space_char(const char *s)
{
 int i;
 for (i = strlen(s) - 1; i >= 0; i--)
  if (!isspace(s[i]))
   return s[i];
 return '\0';
}
