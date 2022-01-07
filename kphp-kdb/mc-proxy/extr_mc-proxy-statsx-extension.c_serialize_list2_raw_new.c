
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int *serialize_list2_raw_new (int *ptr, int *list, int num) {
  int i;
  *(ptr++) = *list;
  for (i = 0; i < 2 * (*list); i++) {
    *(ptr++) = list[i + 1];
  }
  return ptr;
}
