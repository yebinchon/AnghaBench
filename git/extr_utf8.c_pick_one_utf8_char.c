
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char ucs_char_t ;



__attribute__((used)) static ucs_char_t pick_one_utf8_char(const char **start, size_t *remainder_p)
{
 unsigned char *s = (unsigned char *)*start;
 ucs_char_t ch;
 size_t remainder, incr;






 remainder = (remainder_p ? *remainder_p : 999);

 if (remainder < 1) {
  goto invalid;
 } else if (*s < 0x80) {

  ch = *s;
  incr = 1;
 } else if ((s[0] & 0xe0) == 0xc0) {

  if (remainder < 2 ||
      (s[1] & 0xc0) != 0x80 ||
      (s[0] & 0xfe) == 0xc0)
   goto invalid;
  ch = ((s[0] & 0x1f) << 6) | (s[1] & 0x3f);
  incr = 2;
 } else if ((s[0] & 0xf0) == 0xe0) {

  if (remainder < 3 ||
      (s[1] & 0xc0) != 0x80 ||
      (s[2] & 0xc0) != 0x80 ||

      (s[0] == 0xe0 && (s[1] & 0xe0) == 0x80) ||

      (s[0] == 0xed && (s[1] & 0xe0) == 0xa0) ||

      (s[0] == 0xef && s[1] == 0xbf &&
       (s[2] & 0xfe) == 0xbe))
   goto invalid;
  ch = ((s[0] & 0x0f) << 12) |
   ((s[1] & 0x3f) << 6) | (s[2] & 0x3f);
  incr = 3;
 } else if ((s[0] & 0xf8) == 0xf0) {

  if (remainder < 4 ||
      (s[1] & 0xc0) != 0x80 ||
      (s[2] & 0xc0) != 0x80 ||
      (s[3] & 0xc0) != 0x80 ||

      (s[0] == 0xf0 && (s[1] & 0xf0) == 0x80) ||

      (s[0] == 0xf4 && s[1] > 0x8f) || s[0] > 0xf4)
   goto invalid;
  ch = ((s[0] & 0x07) << 18) | ((s[1] & 0x3f) << 12) |
   ((s[2] & 0x3f) << 6) | (s[3] & 0x3f);
  incr = 4;
 } else {
invalid:
  *start = ((void*)0);
  return 0;
 }

 *start += incr;
 if (remainder_p)
  *remainder_p = remainder - incr;
 return ch;
}
