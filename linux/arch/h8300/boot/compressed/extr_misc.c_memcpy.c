
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memcpy(void *dest, const void *src, size_t n)
{
 int i;
 char *d = (char *)dest, *s = (char *)src;

 for (i = 0; i < n; i++)
  d[i] = s[i];
 return dest;
}
