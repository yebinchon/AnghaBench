
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_null (int *list, int num) {
  int i;
  for (i = 0; i < num; i++) if (list[i]) {
    return 0;
  }
  return 1;
}
