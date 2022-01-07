
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int __putstr (char*) ;

void __puthex(unsigned long value)
{
 char alpha[2] = "0";
 int bits;

 for (bits = sizeof(value) * 8 - 4; bits >= 0; bits -= 4) {
  unsigned long digit = (value >> bits) & 0xf;

  if (digit < 0xA)
   alpha[0] = '0' + digit;
  else
   alpha[0] = 'a' + (digit - 0xA);

  __putstr(alpha);
 }
}
