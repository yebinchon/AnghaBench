
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
sign_bits(int base, const char *p)
{
  char c;

  switch (base) {
  case 16:
    if (*p == 'X') c = 'F';
    else c = 'f';
    break;
  case 8:
    c = '7'; break;
  case 2:
    c = '1'; break;
  default:
    c = '.'; break;
  }
  return c;
}
