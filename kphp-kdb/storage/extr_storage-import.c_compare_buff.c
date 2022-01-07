
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int compare_buff (const unsigned char *a, const unsigned char *b, int l) {
  int i, res = 3;
  for (i = 0; i < l; i++) {
    if (a[i] != b[i]) {
      if (a[i] && !b[i]) {
        res &= ~2;
      } else if (b[i] && !a[i]) {
        res &= ~1;
      } else if (a[i] && b[i]) {
        return 0;
      }
      if (!res) {
        return 0;
      }
    }
  }
  return res;
}
