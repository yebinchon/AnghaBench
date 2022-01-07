
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ok_cp1251 (char *s, int n) {
  int i;
  for (i = 1; i < n; i++) {
    if (s[i] == (char)0x98) {
      return 0;
    }
  }

  return 1;
}
