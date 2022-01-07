
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int write_string (char *a, char *s) {
  int need = 8;
  while (*s) {
    *a++ = *s++;
    need--;
  }
  *a++ = 0;
  need--;
  while (need > 0) {
    *a++ = 0;
    need--;
  }

  return 8 - need;
}
