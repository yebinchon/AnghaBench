
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int check (long long *v, int vn, long long *u, int un) {
  int i, j;

  for (i = 0, j = 0; i < vn; i++) {
    while (j + 1 < un && u[j] < v[i]) {
      j++;
    }
    if (u[j] != v[i]) {
      return 0;
    }
  }
  return 1;
}
