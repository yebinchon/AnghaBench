
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* changes ;



int chg_max_size (changes x) {

  if ((long)(x) < 0) {
    return 1;
  } else

  if (x) {
    if (x[0] < 0) {
      return -x[0];
    } else {
      return x[0];
    }
  }
  return 0;
}
