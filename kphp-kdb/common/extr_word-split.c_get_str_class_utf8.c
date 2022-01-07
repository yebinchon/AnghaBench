
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* is_letter_utf8 ;

int get_str_class_utf8 (const char *text, int len) {
  int z = -1;
  while (len > 0) {
    int c = (unsigned char) *text++;
    if (c >= 0xc2 && c < 0xe0 && len > 1 && (signed char) *text < -0x40) {
      c = ((c & 0x1f) << 6) | (*text++ & 0x3f);
      len -= 2;
      z &= is_letter_utf8[c];
    } else if (c < 0x80) {
      z &= is_letter_utf8[c];
      len--;
    } else {
      return 0;
    }
  }
  return z;
}
