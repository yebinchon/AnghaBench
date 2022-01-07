
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *utf8_char (char *ptr, unsigned c) {
  if (c < 0x80) {
    *ptr = c;
    return ptr + 1;
  }
  if (c < 0x800) {
    ptr[0] = 0xc0 + (c >> 6);
    ptr[1] = 0x80 + (c & 0x3f);
    return ptr + 2;
  }
  if (c < 0x10000) {
    ptr[0] = 0xe0 + (c >> 12);
    ptr[1] = 0x80 + ((c >> 6) & 0x3f);
    ptr[2] = 0x80 + (c & 0x3f);
    return ptr + 3;
  }
  if (c < 0x200000) {
    ptr[0] = 0xf0 + (c >> 18);
    ptr[1] = 0x80 + ((c >> 12) & 0x3f);
    ptr[2] = 0x80 + ((c >> 6) & 0x3f);
    ptr[3] = 0x80 + (c & 0x3f);
    return ptr + 4;
  }
  return ptr;
}
