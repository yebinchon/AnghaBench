
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void del_spaces (char *s) {
  if (s != ((void*)0)) {
    char *r = s;
    int bal = 0;
    while (*s) {
      if (*s != ' ' || bal) {
        *r++ = *s;
      }
      if (*s == '[') {
        bal++;
      }
      if (*s == ']') {
        bal--;
      }
      s++;
    }
    *r = 0;
  }
}
