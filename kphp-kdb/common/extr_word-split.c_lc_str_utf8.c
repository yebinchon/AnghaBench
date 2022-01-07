
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** l_case_utf8 ;

void lc_str_utf8 (char *to, const char *from, int len) {
  while (len > 0) {
    int c = (unsigned char) *from++;
    if (c >= 0xc2 && c < 0xe0 && len > 1 && (signed char) *from < -0x40) {
      c = ((c & 0x1f) << 6) | (*from++ & 0x3f);
      int d = l_case_utf8[c];
      *to++ = 0xc0 + (d >> 6);
      *to++ = 0x80 + (d & 0x3f);
      len -= 2;
    } else if (c < 0x80) {
      *to++ = l_case_utf8[c];
      len--;
    } else {
      *to++ = c;
      len--;
    }
  }
  *to = 0;
}
