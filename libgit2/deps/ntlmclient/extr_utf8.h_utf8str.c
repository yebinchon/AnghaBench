
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* utf8_null ;

void *utf8str(const void *haystack, const void *needle) {
  const char *h = (const char *)haystack;



  if ('\0' == *((const char *)needle)) {
    return (void *)haystack;
  }

  while ('\0' != *h) {
    const char *maybeMatch = h;
    const char *n = (const char *)needle;

    while (*h == *n && (*h != '\0' && *n != '\0')) {
      n++;
      h++;
    }

    if ('\0' == *n) {


      return (void *)maybeMatch;
    } else {


      if ('\0' != *h) {
        do {
          h++;
        } while (0x80 == (0xc0 & *h));
      }
    }
  }


  return utf8_null;
}
