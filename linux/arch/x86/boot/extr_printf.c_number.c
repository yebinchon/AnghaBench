
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEFT ;
 int PLUS ;
 int SIGN ;
 int SMALL ;
 int SPACE ;
 int SPECIAL ;
 int ZEROPAD ;
 size_t __do_div (long,int) ;

__attribute__((used)) static char *number(char *str, long num, int base, int size, int precision,
      int type)
{

 static const char digits[16] = "0123456789ABCDEF";

 char tmp[66];
 char c, sign, locase;
 int i;



 locase = (type & SMALL);
 if (type & LEFT)
  type &= ~ZEROPAD;
 if (base < 2 || base > 16)
  return ((void*)0);
 c = (type & ZEROPAD) ? '0' : ' ';
 sign = 0;
 if (type & SIGN) {
  if (num < 0) {
   sign = '-';
   num = -num;
   size--;
  } else if (type & PLUS) {
   sign = '+';
   size--;
  } else if (type & SPACE) {
   sign = ' ';
   size--;
  }
 }
 if (type & SPECIAL) {
  if (base == 16)
   size -= 2;
  else if (base == 8)
   size--;
 }
 i = 0;
 if (num == 0)
  tmp[i++] = '0';
 else
  while (num != 0)
   tmp[i++] = (digits[__do_div(num, base)] | locase);
 if (i > precision)
  precision = i;
 size -= precision;
 if (!(type & (ZEROPAD + LEFT)))
  while (size-- > 0)
   *str++ = ' ';
 if (sign)
  *str++ = sign;
 if (type & SPECIAL) {
  if (base == 8)
   *str++ = '0';
  else if (base == 16) {
   *str++ = '0';
   *str++ = ('X' | locase);
  }
 }
 if (!(type & LEFT))
  while (size-- > 0)
   *str++ = c;
 while (i < precision--)
  *str++ = '0';
 while (i-- > 0)
  *str++ = tmp[i];
 while (size-- > 0)
  *str++ = ' ';
 return str;
}
