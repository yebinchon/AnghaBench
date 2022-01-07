
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uni_iterator ;


 int MAX_WORDS ;
 int assert (int) ;
 int* intersect_buff ;
 int uni_iter_val_and_next (int *) ;

int *uni_iter_intersect (uni_iterator *a, int n, int max_cnt) {


  intersect_buff[0] = 0;
  if (n >= MAX_WORDS || n == 0) {
    return intersect_buff;
  }

  if (n == 1) {
    int val;

    while (intersect_buff[0] < max_cnt && (val = uni_iter_val_and_next (&a[0]))) {
      intersect_buff[++intersect_buff[0]] = val;
    }
  } else {
    int i, j;

    int val;

    while ( (val = uni_iter_val_and_next (&a[0])) ) {
      intersect_buff[++intersect_buff[0]] = val;
    }

    for (i = 1; i < n && intersect_buff[0]; i++) {
      int len = intersect_buff[0];
      intersect_buff[0] = 0;
      j = 1;

      while ( (val = uni_iter_val_and_next (&a[i])) ) {
        while (j < len && intersect_buff[j] > val) {
          j++;
        }
        if (intersect_buff[j] == val) {
          intersect_buff[++intersect_buff[0]] = val;
          if (i + 1 == n && intersect_buff[0] == max_cnt) {
            break;
          }
        }
      }
    }
  }

  assert (intersect_buff[0] <= max_cnt);
  return intersect_buff;
}
