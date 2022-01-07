
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRUE ;
 char** parts ;
 scalar_t__ pn ;
 scalar_t__ separator (char) ;

__attribute__((used)) static void split (char *s) {
  pn = 0;
  while (TRUE) {
    int end = 0;
    while (!end && *s && separator (*s)) {
      if (*s == '\t') {
        end = 1;
      }
      *s++ = 0;
    }
    if (!*s) {
      break;
    }
    parts[pn++] = s;
    while (*s && !separator (*s)) {
      s++;
    }
  }
}
