
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRUE ;
 scalar_t__ delimiter (char) ;

__attribute__((used)) static int split_string (char *s, char **parts) {
  int pn = 0;
  while (TRUE) {
    int end = 0;
    while (!end && *s && delimiter (*s)) {
      if (*s == '\t') {
        end = 1;
      }
      *s++ = 0;
    }
    if (!*s || pn == 5) {
      break;
    }
    parts[pn++] = s;
    while (*s && !delimiter (*s)) {
      s++;
    }
  }
  return (pn == 5) && (*s == 0);
}
