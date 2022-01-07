
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strcmp(const char *str1, const char *str2)
{
 const unsigned char *s1 = (const unsigned char *)str1;
 const unsigned char *s2 = (const unsigned char *)str2;
 int delta = 0;

 while (*s1 || *s2) {
  delta = *s1 - *s2;
  if (delta)
   return delta;
  s1++;
  s2++;
 }
 return 0;
}
