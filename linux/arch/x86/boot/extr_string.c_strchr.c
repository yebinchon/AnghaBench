
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strchr(const char *s, int c)
{
 while (*s != (char)c)
  if (*s++ == '\0')
   return ((void*)0);
 return (char *)s;
}
