
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int strcmp_nospace(char *s1, char *s2)
{
 while (*s1 && *s2) {
  while (isspace(*s1))
   s1++;
  while (isspace(*s2))
   s2++;
  if (*s1 > *s2)
   return 1;
  if (*s1 < *s2)
   return -1;
  s1++;
  s2++;
 }
 return 0;
}
