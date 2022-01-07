
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t utf8len(const void *str) {
  const unsigned char *s = (const unsigned char *)str;
  size_t length = 0;

  while ('\0' != *s) {
    if (0xf0 == (0xf8 & *s)) {

      s += 4;
    } else if (0xe0 == (0xf0 & *s)) {

      s += 3;
    } else if (0xc0 == (0xe0 & *s)) {

      s += 2;
    } else {

      s += 1;
    }



    length++;
  }

  return length;
}
