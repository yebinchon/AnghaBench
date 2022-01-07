
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int *unserialize_list2_raw_new (int *ptr, int *data, int num) {
  int x = *(ptr ++);
  int i;
  for (i = 0; i < x; i++) {
    if (*data == num) {
      ptr += 2;
    } else {
      data[2 * (*data) + 1] = *(ptr ++);
      data[2 * (*data) + 2] = *(ptr ++);
      (*data) ++;
    }
  }
  return ptr;
}
