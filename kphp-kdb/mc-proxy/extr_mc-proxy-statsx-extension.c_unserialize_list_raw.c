
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int *unserialize_list_raw (int *ptr, int *data, int num) {
  int x = *(ptr++);
  assert (x <= num);
  int i;
  for (i = 0; i < x; i++) {
    data[i] += *(ptr++);
  }
  return ptr;
}
