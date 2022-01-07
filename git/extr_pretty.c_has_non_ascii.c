
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ non_ascii (int) ;

int has_non_ascii(const char *s)
{
 int ch;
 if (!s)
  return 0;
 while ((ch = *s++) != '\0') {
  if (non_ascii(ch))
   return 1;
 }
 return 0;
}
