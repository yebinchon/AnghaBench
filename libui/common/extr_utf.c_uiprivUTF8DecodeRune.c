
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int badrune ;

const char *uiprivUTF8DecodeRune(const char *s, size_t nElem, uint32_t *rune)
{
 uint8_t b, c;
 uint8_t lowestAllowed, highestAllowed;
 size_t i, expected;
 int bad;

 b = (uint8_t) (*s);
 if (b < 0x80) {
  *rune = b;
  s++;
  return s;
 }



 if (b < 0xC2 || b > 0xF4) {
  *rune = badrune;
  s++;
  return s;
 }


 lowestAllowed = 0x80;
 highestAllowed = 0xBF;
 switch (b) {
 case 0xE0:

  lowestAllowed = 0xA0;
  break;
 case 0xED:

  highestAllowed = 0x9F;
  break;
 case 0xF0:

  lowestAllowed = 0x90;
  break;
 case 0xF4:

  highestAllowed = 0x8F;
  break;
 }


 expected = 1;
 if (b >= 0xE0)
  expected++;
 if (b >= 0xF0)
  expected++;
 if (nElem != 0) {
  nElem--;
  if (nElem < expected) {
   *rune = badrune;
   s++;
   return s;
  }
 }



 bad = 0;
 for (i = 0; i < expected; i++) {
  c = (uint8_t) (s[1 + i]);
  if (c < lowestAllowed || c > highestAllowed) {
   bad = 1;
   break;
  }

  lowestAllowed = 0x80;
  highestAllowed = 0xBF;
 }
 if (bad) {
  *rune = badrune;
  s++;
  return s;
 }


 if (b < 0xE0)
  *rune = b & 0x1F;
 else if (b < 0xF0)
  *rune = b & 0x0F;
 else
  *rune = b & 0x07;
 s++;


 for (; expected; expected--) {
  c = (uint8_t) (*s);
  s++;
  c &= 0x3F;
  *rune <<= 6;
  *rune |= c;
 }

 return s;
}
