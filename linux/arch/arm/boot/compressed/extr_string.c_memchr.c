
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memchr(const void *s, int c, size_t count)
{
 const unsigned char *p = s;

 while (count--)
  if ((unsigned char)c == *p++)
   return (void *)(p - 1);
 return ((void*)0);
}
