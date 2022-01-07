
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int not_null (int *list, int num) {
  int i;
  int cnt = 0;
  for (i = 0; i < num; i++) if (list[i]) {
    cnt ++;
  }
  return cnt;
}
