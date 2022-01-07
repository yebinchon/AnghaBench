
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_id; } ;
typedef TYPE_1__ list_t ;
typedef int list_id_t ;


 scalar_t__ list_id_less (int ,int ) ;

void lsort (list_t **A, int b) {
  if (b <= 0) {
    return;
  }
  int i = 0, j = b;
  list_id_t h = A[b >> 1]->list_id;
  list_t *t;
  do {
    while (list_id_less (A[i]->list_id, h)) {
      i++;
    }
    while (list_id_less (h, A[j]->list_id)) {
      j--;
    }
    if (i <= j) {
      t = A[i];
      A[i] = A[j];
      A[j] = t;
      i++;
      j--;
    }
  } while (i <= j);
  lsort (A, j);
  lsort (A + i, b - i);
}
