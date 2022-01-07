
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void cstr_remove_extra_spaces (char *buf) {
  char *s, *w, last;
  for (s = buf, w = buf, last = ' '; *s; s++) {
    if (*s == ' ' && last == ' ') {
      continue;
    }
    last = *w++ = *s;
  }

  *w-- = 0;
  while (w >= buf && *w == ' ') {
    *w-- = 0;
  }
}
