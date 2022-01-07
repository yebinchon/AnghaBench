
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOLOWER (char const) ;
 scalar_t__ isxdigit (char const) ;

__attribute__((used)) static unsigned int simple_guess_base(const char *cp)
{
 if (cp[0] == '0') {
  if (TOLOWER(cp[1]) == 'x' && isxdigit(cp[2]))
   return 16;
  else
   return 8;
 } else {
  return 10;
 }
}
