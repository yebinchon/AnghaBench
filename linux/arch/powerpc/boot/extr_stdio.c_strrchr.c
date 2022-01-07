
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strrchr(const char *s, int c)
{
 const char *last = ((void*)0);
 do {
  if (*s == (char)c)
   last = s;
 } while (*s++);
 return (char *)last;
}
