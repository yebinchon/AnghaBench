
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int put_char_utf8 (unsigned int x, char *s) {
  if (x <= 0x7f) {
    s[0] = x;
    return 1;
  } else if (x <= 0x7ff) {
    s[0] = ((x >> 6) | 0xc0) & 0xdf;
    s[1] = ((x ) | 0x80) & 0xbf;
    return 2;
  } else if (x <= 0xffff) {
    s[0] = ((x >> 12) | 0xe0) & 0xef;
    s[1] = ((x >> 6) | 0x80) & 0xbf;
    s[2] = ((x ) | 0x80) & 0xbf;
    return 3;
  } else if (x <= 0x1fffff) {
    s[0] = ((x >> 18) | 0xf0) & 0xf7;
    s[1] = ((x >> 12) | 0x80) & 0xbf;
    s[2] = ((x >> 6) | 0x80) & 0xbf;
    s[3] = ((x ) | 0x80) & 0xbf;
    return 4;
  } else {

  }
  return 0;
}
