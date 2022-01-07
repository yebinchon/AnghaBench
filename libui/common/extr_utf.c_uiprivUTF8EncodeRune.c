
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int badrune ;

size_t uiprivUTF8EncodeRune(uint32_t rune, char *encoded)
{
 uint8_t b, c, d, e;
 size_t n;


 if (rune > 0x10FFFF)
  rune = badrune;

 if (rune >= 0xD800 && rune < 0xE000)
  rune = badrune;

 if (rune < 0x80) {
  b = (uint8_t) (rune & 0xFF);
  n = 1;
  goto done;
 }
 if (rune < 0x800) {
  c = (uint8_t) (rune & 0x3F);
  c |= 0x80;
  rune >>= 6;
  b = (uint8_t) (rune & 0x1F);
  b |= 0xC0;
  n = 2;
  goto done;
 }
 if (rune < 0x10000) {
  d = (uint8_t) (rune & 0x3F);
  d |= 0x80;
  rune >>= 6;
  c = (uint8_t) (rune & 0x3F);
  c |= 0x80;
  rune >>= 6;
  b = (uint8_t) (rune & 0x0F);
  b |= 0xE0;
  n = 3;
  goto done;
 }

 e = (uint8_t) (rune & 0x3F);
 e |= 0x80;
 rune >>= 6;
 d = (uint8_t) (rune & 0x3F);
 d |= 0x80;
 rune >>= 6;
 c = (uint8_t) (rune & 0x3F);
 c |= 0x80;
 rune >>= 6;
 b = (uint8_t) (rune & 0x07);
 b |= 0xF0;
 n = 4;

done:
 encoded[0] = b;
 if (n > 1)
  encoded[1] = c;
 if (n > 2)
  encoded[2] = d;
 if (n > 3)
  encoded[3] = e;
 return n;
}
