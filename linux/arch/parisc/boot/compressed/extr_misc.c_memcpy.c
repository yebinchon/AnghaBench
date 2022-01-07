
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memcpy(void *d, const void *s, size_t len)
{
 char *dest = (char *)d;
 const char *source = (const char *)s;

 while (len--)
  *dest++ = *source++;
 return d;
}
