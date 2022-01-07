
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int badrune ;

const uint16_t *uiprivUTF16DecodeRune(const uint16_t *s, size_t nElem, uint32_t *rune)
{
 uint16_t high, low;

 if (*s < 0xD800 || *s >= 0xE000) {

  *rune = *s;
  s++;
  return s;
 }
 if (*s >= 0xDC00) {

  *rune = badrune;
  s++;
  return s;
 }
 if (nElem == 1) {
  *rune = badrune;
  s++;
  return s;
 }
 high = *s;
 high &= 0x3FF;
 if (s[1] < 0xDC00 || s[1] >= 0xE000) {

  *rune = badrune;
  s++;
  return s;
 }
 s++;
 low = *s;
 s++;
 low &= 0x3FF;
 *rune = high;
 *rune <<= 10;
 *rune |= low;
 *rune += 0x10000;
 return s;
}
