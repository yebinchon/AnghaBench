
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int git__prefixcmp(const char *str, const char *prefix)
{
 unsigned char s, p;

 while (1) {
  p = *prefix++;
  s = *str++;

  if (!p)
   return 0;

  if (s != p)
   return s - p;
 }
}
