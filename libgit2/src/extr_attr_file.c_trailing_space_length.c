
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t trailing_space_length(const char *p, size_t len)
{
 size_t n, i;
 for (n = len; n; n--) {
  if (p[n-1] != ' ' && p[n-1] != '\t')
   break;
  i = n;
  while (i > 1 && p[i-2] == '\\')
   i--;
  if ((n - i) % 2)
   break;
 }
 return len - n;
}
