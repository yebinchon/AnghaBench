
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int *unserialize_list2_raw (int *ptr, int *data, int num) {
  int x = *(ptr++);
  assert (x <= num);
  int i, j;
  for (i = 0; i < x; i++) {
    int y = *(ptr++);
    int z = *(ptr++);
    int result = -1;
    for (j = 0; j < num; j ++) if (data[2 * j] == y) {
      data[2 * j + 1] += z;
      result = j;
      break;
    }
    if (result < 0 && data[2 * (num - 1) + 1] < z) {
      data[2 * (num - 1) + 1] = z;
      data[2 * (num - 1)] = y;
      result = (num - 1);
    }
    while (result > 0) {
      if (data[2 * result + 1] > data[2 * result - 1]) {
        int t;
        t = data[2 * result + 1]; data[2 * result + 1] = data[2 * result - 1]; data[2 * result - 1] = t;
        t = data[2 * result + 0]; data[2 * result + 0] = data[2 * result - 2]; data[2 * result - 2] = t;
        result --;
      } else {
        break;
      }
    }
  }
  return ptr;
}
