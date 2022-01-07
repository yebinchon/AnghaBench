
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int *serialize_list2_raw (int *ptr, int *list, int num) {
  int i;
  if (!list) {
    *(ptr++) = 0;
    return ptr;
  }
  *(ptr++) = num;
  for (i = 0; i < 2*num; i++) {
    *(ptr++) = list[i];
  }
  return ptr;
}
