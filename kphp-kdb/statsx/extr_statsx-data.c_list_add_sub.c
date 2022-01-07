
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void list_add_sub (int *a, int *b, unsigned long long mask) {
  int i;
  int j = 0;
  for (i = 0; i < 64; i++) if (mask & (1ull << i)) {
    a[i] += b[j ++];
  }
}
