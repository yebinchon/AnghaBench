
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled_since; } ;


 TYPE_1__* get_ad (int) ;

void pal_sort (int *A, int b) {
  if (b <= 0) {
    return;
  }
  int h = get_ad (A[b >> 1])->disabled_since, i = 0, j = b;
  do {
    while (get_ad (A[i])->disabled_since < h) {
      i++;
    }
    while (get_ad (A[j])->disabled_since > h) {
      j--;
    }
    if (i <= j) {
      int t = A[i];
      A[i++] = A[j];
      A[j--] = t;
    }
  } while (i <= j);
  pal_sort (A, j);
  pal_sort (A + i, b - i);
}
