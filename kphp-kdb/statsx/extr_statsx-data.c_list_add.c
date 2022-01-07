
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void list_add (int *a, int *b, int cnt) {
  if (!a || !b) { return; }
  int i;
  for (i = 0; i < cnt; i++) {
    a[i] += b[i];
  }
}
