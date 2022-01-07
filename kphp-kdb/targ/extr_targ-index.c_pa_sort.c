
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int retarget_time; } ;


 TYPE_1__* get_ad (int) ;

void pa_sort (int *A, int b) {
  if (b <= 0) {
    return;
  }
  int h = get_ad (A[b >> 1])->retarget_time, i = 0, j = b;
  do {
    while (get_ad (A[i])->retarget_time < h) {
      i++;
    }
    while (get_ad (A[j])->retarget_time > h) {
      j--;
    }
    if (i <= j) {
      int t = A[i];
      A[i++] = A[j];
      A[j--] = t;
    }
  } while (i <= j);
  pa_sort (A, j);
  pa_sort (A + i, b - i);
}
