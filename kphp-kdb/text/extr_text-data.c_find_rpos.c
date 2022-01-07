
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int N; int* A; int last_A; } ;
typedef TYPE_1__ listree_t ;


 int assert (int) ;

int find_rpos (listree_t *U, int local_id) {
  int l = -1, r = U->N, x;

  if (!U->A && local_id > U->last_A) {
    return 0;
  }

  if (!U->A && U->N) {
    return -2;
  }


  while (r - l > 1) {
    x = (l + r) / 2;
    if (local_id <= U->A[x]) {
      r = x;
    } else {
      l = x;
    }
  }
  assert (r >= 0 && r <= U->N);
  return U->N - r;
}
