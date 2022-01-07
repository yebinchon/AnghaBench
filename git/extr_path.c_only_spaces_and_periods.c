
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int only_spaces_and_periods(const char *path, size_t len, size_t skip)
{
 if (len < skip)
  return 0;
 len -= skip;
 path += skip;
 while (len-- > 0) {
  char c = *(path++);
  if (c != ' ' && c != '.')
   return 0;
 }
 return 1;
}
