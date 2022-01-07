
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ____memcpy (void*,void const*,size_t) ;

void *memmove(void *dest, const void *src, size_t n)
{
 unsigned char *d = dest;
 const unsigned char *s = src;

 if (d <= s || d - s >= n)
  return ____memcpy(dest, src, n);

 while (n-- > 0)
  d[n] = s[n];

 return dest;
}
