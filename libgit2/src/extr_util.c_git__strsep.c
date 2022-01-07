
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,char) ;

char *git__strsep(char **end, const char *sep)
{
 char *start = *end, *ptr = *end;

 while (*ptr && !strchr(sep, *ptr))
  ++ptr;

 if (*ptr) {
  *end = ptr + 1;
  *ptr = '\0';

  return start;
 }

 return ((void*)0);
}
