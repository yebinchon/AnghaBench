
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* utf8_null ;

void *utf8pbrk(const void *str, const void *accept) {
  const char *s = (const char *)str;

  while ('\0' != *s) {
    const char *a = (const char *)accept;
    size_t offset = 0;

    while ('\0' != *a) {



      if ((0x80 != (0xc0 & *a)) && (0 < offset)) {
        return (void *)s;
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


    if (0 < offset) {
      return (void *)s;
    }




    do {
      s++;
    } while ((0x80 == (0xc0 & *s)));
  }

  return utf8_null;
}
