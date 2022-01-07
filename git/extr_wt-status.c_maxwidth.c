
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_strwidth (char const*) ;

__attribute__((used)) static int maxwidth(const char *(*label)(int), int minval, int maxval)
{
 int result = 0, i;

 for (i = minval; i <= maxval; i++) {
  const char *s = label(i);
  int len = s ? utf8_strwidth(s) : 0;
  if (len > result)
   result = len;
 }
 return result;
}
