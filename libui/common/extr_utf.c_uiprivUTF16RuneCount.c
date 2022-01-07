
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__* uiprivUTF16DecodeRune (scalar_t__ const*,size_t,int *) ;

size_t uiprivUTF16RuneCount(const uint16_t *s, size_t nElem)
{
 size_t len;
 uint32_t rune;

 if (nElem != 0) {
  const uint16_t *t, *u;

  len = 0;
  t = s;
  while (nElem != 0) {
   u = uiprivUTF16DecodeRune(t, nElem, &rune);
   len++;
   nElem -= u - t;
   t = u;
  }
  return len;
 }
 len = 0;
 while (*s) {
  s = uiprivUTF16DecodeRune(s, nElem, &rune);
  len++;
 }
 return len;
}
