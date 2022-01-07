
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *dl_strstr_kmp (const char *a, int *kmp, const char *b) {
  int i, j = 0;
  for (i = 0; b[i]; i++) {
    while (j && a[j] != b[i]) {
      j = kmp[j];
    }
    if (a[j] == b[i]) {
      j++;
    }

    if (!a[j]) {
      return (char *)(b + i - j + 1);
    }
  }
  return ((void*)0);
}
