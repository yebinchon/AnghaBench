
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int skip_atoi(const char **s)
{
 int i, c;

 for (i = 0; '0' <= (c = **s) && c <= '9'; ++*s)
  i = i*10 + c - '0';
 return i;
}
