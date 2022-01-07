
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

char *strnstr(const char *s1, const char *s2, size_t n) {
  size_t len = strlen(s2);
  if (n >= len) {
    char c = *s2;
    const char *end = s1 + (n - len);
    const char *s;
    for (s = s1; *s && s <= end; s++) {
      if (*s == c && !strncmp(s, s2, len)) {
        return (char *)s;
      }
    }
  }
  return ((void*)0);
}
