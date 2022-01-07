
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_null (int*,int) ;

__attribute__((used)) static int *serialize_list_raw (int *ptr, int *list, int num) {
  int i;
  if (is_null (list, num)) {
    *(ptr++) = 0;
    return ptr;
  }
  *(ptr++) = num;
  for (i = 0; i < num; i++) {
    *(ptr++) = list[i];
  }
  return ptr;
}
