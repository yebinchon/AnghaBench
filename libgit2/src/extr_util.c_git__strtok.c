
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

char *git__strtok(char **end, const char *sep)
{
 char *ptr = *end;

 while (*ptr && strchr(sep, *ptr))
  ++ptr;

 if (*ptr) {
  char *start = ptr;
  *end = start + 1;

  while (**end && !strchr(sep, **end))
   ++*end;

  if (**end) {
   **end = '\0';
   ++*end;
  }

  return start;
 }

 return ((void*)0);
}
