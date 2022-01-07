
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOLOWER (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isxdigit (char const) ;
 unsigned int simple_guess_base (char const*) ;

unsigned long long simple_strtoull(const char *cp, char **endp, unsigned int base)
{
 unsigned long long result = 0;

 if (!base)
  base = simple_guess_base(cp);

 if (base == 16 && cp[0] == '0' && TOLOWER(cp[1]) == 'x')
  cp += 2;

 while (isxdigit(*cp)) {
  unsigned int value;

  value = isdigit(*cp) ? *cp - '0' : TOLOWER(*cp) - 'a' + 10;
  if (value >= base)
   break;
  result = result * base + value;
  cp++;
 }
 if (endp)
  *endp = (char *)cp;

 return result;
}
