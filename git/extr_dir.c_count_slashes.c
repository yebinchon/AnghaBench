
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int count_slashes(const char *s)
{
 int cnt = 0;
 while (*s)
  if (*s++ == '/')
   cnt++;
 return cnt;
}
