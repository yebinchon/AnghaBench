
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_n (char const*,unsigned long*,char const**) ;

__attribute__((used)) static bool parse_xy(const char *s, unsigned long *x, unsigned long *y)
{
 unsigned long new_x = *x;
 unsigned long new_y = *y;

 for (;;) {
  if (!*s)
   return 0;

  if (*s == ';')
   break;

  if (*s == 'x') {
   if (!parse_n(s + 1, &new_x, &s))
    return 0;
  } else if (*s == 'y') {
   if (!parse_n(s + 1, &new_y, &s))
    return 0;
  } else {
   return 0;
  }
 }

 *x = new_x;
 *y = new_y;
 return 1;
}
