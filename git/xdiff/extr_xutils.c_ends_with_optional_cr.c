
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ends_with_optional_cr(const char *l, long s, long i)
{
 int complete = s && l[s-1] == '\n';

 if (complete)
  s--;
 if (s == i)
  return 1;

 if (complete && s == i + 1 && l[i] == '\r')
  return 1;
 return 0;
}
