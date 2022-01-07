
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;

char *get_watchcat_s (unsigned long long h) {
  static char buf[100];
  char *s = buf;
  *s++ = 'w';
  *s++ = '_';
  while (h) {
    int x = h % 62;
    h /= 62;
    if (x < 26) {
      *s++ = x + 'A';
    } else {
      x -= 26;
      if (x < 26) {
        *s++ = x + 'a';
      } else {
        x -= 26;
        if (x < 10) {
          *s++ = x + '0';
        } else {
          assert (0);
        }
      }
    }
  }
  *s++ = 0;

  return buf;
}
