
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* head; int* value; int* prev; } ;
typedef TYPE_1__ buckets_t ;


 int assert (int) ;

__attribute__((used)) static void ss_bucket_sort (buckets_t *B, int *p, int n, int *R, int k) {
  int i, j, r;
  for (i = -1; i < n; i++) {
    B->head[i] = -1;
  }
  for (r = 0; r < n; r++) {
    j = p[r] + k;
    i = (j < n) ? R[j] : -1;
    B->value[r] = p[r];
    B->prev[r] = B->head[i];
    B->head[i] = r;
  }
  r = n - 1;
  for (i = n - 1; i >= -1; i--) {
    for (j = B->head[i]; j >= 0; j = B->prev[j]) {
      p[r] = B->value[j];
      r--;
    }
  }
  assert (r == -1);
}
