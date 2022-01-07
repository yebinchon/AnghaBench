
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hex_to_int (char *s, int *x) {
  int i;
  *x = 0;
  for (i = 0; i < 8; i++) {
    if ('0' <= s[i] && s[i] <= '9') {
      *x = (*x) * 16 + s[i] - '0';
    } else if ('a' <= s[i] && s[i] <= 'f') {
      *x = (*x) * 16 + s[i] - 'a' + 10;
    } else {
      return 0;
    }
  }
  return 1;
}
