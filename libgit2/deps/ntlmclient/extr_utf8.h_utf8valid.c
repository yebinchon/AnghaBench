
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* utf8_null ;

void *utf8valid(const void *str) {
  const char *s = (const char *)str;

  while ('\0' != *s) {
    if (0xf0 == (0xf8 & *s)) {


      if ((0x80 != (0xc0 & s[1])) || (0x80 != (0xc0 & s[2])) ||
          (0x80 != (0xc0 & s[3]))) {
        return (void *)s;
      }


      if (0x80 == (0xc0 & s[4])) {
        return (void *)s;
      }




      if ((0 == (0x07 & s[0])) && (0 == (0x30 & s[1]))) {
        return (void *)s;
      }


      s += 4;
    } else if (0xe0 == (0xf0 & *s)) {


      if ((0x80 != (0xc0 & s[1])) || (0x80 != (0xc0 & s[2]))) {
        return (void *)s;
      }


      if (0x80 == (0xc0 & s[3])) {
        return (void *)s;
      }




      if ((0 == (0x0f & s[0])) && (0 == (0x20 & s[1]))) {
        return (void *)s;
      }


      s += 3;
    } else if (0xc0 == (0xe0 & *s)) {


      if (0x80 != (0xc0 & s[1])) {
        return (void *)s;
      }


      if (0x80 == (0xc0 & s[2])) {
        return (void *)s;
      }




      if (0 == (0x1e & s[0])) {
        return (void *)s;
      }


      s += 2;
    } else if (0x00 == (0x80 & *s)) {

      s += 1;
    } else {

      return (void *)s;
    }
  }

  return utf8_null;
}
