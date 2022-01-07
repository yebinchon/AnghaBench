
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hash_t ;



int list_contained (hash_t *A, int An, hash_t *B, int Bn) {
  int i;
  for (i = 0; i < An; i++) {
    int l = -1, r = Bn;
    hash_t cur = A[i];
    while (r - l > 1) {
      int m = (l + r) >> 1;
      if (cur < B[m]) {
        r = m;
      } else {
        l = m;
      }
    }
    if (l < 0 || B[l] != cur) {
      return 0;
    }
  }

  return 1;
}
