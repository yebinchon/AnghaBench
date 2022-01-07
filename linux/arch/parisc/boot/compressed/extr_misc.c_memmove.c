
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memmove(void *dest, const void *src, size_t n)
{
 const char *s = src;
 char *d = dest;

 if (d <= s) {
  while (n--)
   *d++ = *s++;
 } else {
  d += n;
  s += n;
  while (n--)
   *--d = *--s;
 }
 return dest;
}
