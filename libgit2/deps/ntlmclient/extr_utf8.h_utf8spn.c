
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t utf8spn(const void *src, const void *accept) {
  const char *s = (const char *)src;
  size_t chars = 0;

  while ('\0' != *s) {
    const char *a = (const char *)accept;
    size_t offset = 0;

    while ('\0' != *a) {



      if ((0x80 != (0xc0 & *a)) && (0 < offset)) {



        chars++;
        s += offset;
        break;
      } else {
        if (*a == s[offset]) {
          offset++;
          a++;
        } else {


          do {
            a++;
          } while (0x80 == (0xc0 & *a));


          offset = 0;
        }
      }
    }



    if ('\0' == *a) {
      return chars;
    }
  }

  return chars;
}
