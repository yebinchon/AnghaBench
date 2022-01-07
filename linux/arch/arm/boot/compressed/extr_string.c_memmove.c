
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memcpy (void*,void const*,size_t) ;

void *memmove(void *__dest, __const void *__src, size_t count)
{
 unsigned char *d = __dest;
 const unsigned char *s = __src;

 if (__dest == __src)
  return __dest;

 if (__dest < __src)
  return memcpy(__dest, __src, count);

 while (count--)
  d[count] = s[count];
 return __dest;
}
