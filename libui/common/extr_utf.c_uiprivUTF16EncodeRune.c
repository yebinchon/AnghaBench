
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int badrune ;

size_t uiprivUTF16EncodeRune(uint32_t rune, uint16_t *encoded)
{
 uint16_t low, high;


 if (rune > 0x10FFFF)
  rune = badrune;

 if (rune >= 0xD800 && rune < 0xE000)
  rune = badrune;

 if (rune < 0x10000) {
  encoded[0] = (uint16_t) rune;
  return 1;
 }

 rune -= 0x10000;
 low = (uint16_t) (rune & 0x3FF);
 rune >>= 10;
 high = (uint16_t) (rune & 0x3FF);
 encoded[0] = high | 0xD800;
 encoded[1] = low | 0xDC00;
 return 2;
}
