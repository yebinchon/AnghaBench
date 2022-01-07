
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int mystrcmp2 (const char *str1, int l1, const char *str2, int l2, int x) {
  while (x < l1 && x < l2) {
    if (str1[x] < str2[x]) {
      return -x - 1;
    }
    if (str1[x] > str2[x]) {
      return x + 1;
    }
    x++;
  }
  if (l1 < l2) {
    return -x - 1;
  }
  if (l1 > l2) {
    return x + 1;
  }
  return 0;
}
