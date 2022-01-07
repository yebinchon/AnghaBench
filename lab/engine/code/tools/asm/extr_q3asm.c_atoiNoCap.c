
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT64 ;


 scalar_t__ atoi64 (char const*) ;

__attribute__((used)) static int atoiNoCap (const char *s)
{
  INT64 l;
  union {
    unsigned int u;
    signed int i;
  } retval;

  l = atoi64(s);

  if (l < 0) {
    retval.i = (int)l;
  } else {
    retval.u = (unsigned int)l;
  }
  return retval.i;
}
