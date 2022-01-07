
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ utf8seq_is_illegal (unsigned char*,int) ;
 scalar_t__ utf8seq_is_overlong (unsigned char*,int) ;
 scalar_t__ utf8seq_is_surrogate (unsigned char*,int) ;

__attribute__((used)) static inline int utf8dec_wchar(wchar_t *c, unsigned char *in, size_t inb)
{
 int i;
 int n = -1;


 if (*in <= 0x7F) {
  *c = *in;
  return 1;
 }


 if ((*in & 0xE0) == 0xC0) n = 2;
 else if ((*in & 0xF0) == 0xE0) n = 3;
 else if ((*in & 0xF8) == 0xF0) n = 4;
 else if ((*in & 0xFC) == 0xF8) n = 5;
 else if ((*in & 0xFE) == 0xFC) n = 6;


 if (n > inb)
  return -2;


 if (n > 1 && n < 5) {

  if (utf8seq_is_overlong(in, n) ||
   utf8seq_is_surrogate(in, n) ||
   utf8seq_is_illegal(in, n))
   return -1;


  *c = (char)(*in++ & (0x7F >> n));

  for (i = 1; i < n; i++) {

   if (*in < 0x80 || *in > 0xBF)
    return -1;

   *c = (*c << 6) | (*in++ & 0x3F);
  }

  return n;
 }


 return -1;
}
