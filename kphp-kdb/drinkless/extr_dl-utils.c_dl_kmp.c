
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void dl_kmp (const char *a, int *kmp) {
  if (kmp == ((void*)0)) {
    return;
  }
  int i, j = 0;
  kmp[0] = 0;
  for (i = 0; a[i]; i++) {
    while (j && a[i] != a[j]) {
      j = kmp[j];
    }
    if (i != j && a[i] == a[j]) {
      j++;
    }
    kmp[i + 1] = j;
  }
}
