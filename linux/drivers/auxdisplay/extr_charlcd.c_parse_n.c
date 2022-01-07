
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;

__attribute__((used)) static bool parse_n(const char *s, unsigned long *res, const char **next_s)
{
 if (!isdigit(*s))
  return 0;

 *res = 0;
 while (isdigit(*s)) {
  *res = *res * 10 + (*s - '0');
  ++s;
 }

 *next_s = s;
 return 1;
}
