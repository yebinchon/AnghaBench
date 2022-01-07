
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void reverse_list (int *Res, int sz) {
  int i;
  for (i = 0; i < (sz >> 1); i++) {
    int t = Res[i];
    Res[i] = Res[sz - i - 1];
    Res[sz - i - 1] = t;
  }
}
