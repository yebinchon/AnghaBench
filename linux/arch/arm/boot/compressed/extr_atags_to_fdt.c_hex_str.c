
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void hex_str(char *out, uint32_t value)
{
 uint32_t digit;
 int idx;

 for (idx = 7; idx >= 0; idx--) {
  digit = value >> 28;
  value <<= 4;
  digit &= 0xf;
  if (digit < 10)
   digit += '0';
  else
   digit += 'A'-10;
  *out++ = digit;
 }
 *out = '\0';
}
