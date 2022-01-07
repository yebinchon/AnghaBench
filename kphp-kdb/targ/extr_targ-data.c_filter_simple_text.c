
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *filter_simple_text (char *to, const char *text, int len) {
  char *q = to, *end = to + len;
  while (q < end) {
    if ((unsigned char) *text < ' ') {
      *q++ = ' ';
      text++;
    } else {
      *q++ = *text++;
    }
  }
  *q = 0;
  return to;
}
