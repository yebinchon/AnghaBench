
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* P ;
 int PL ;
 int PL_M_CAT ;
 int PL_M_MASK ;

__attribute__((used)) static int remove_unused_uids (int owner_id) {
  int *A = P, *B = P, x;
  while (*A != -1) {
    x = *A++;
    if (!(x & PL_M_CAT)) {
      x &= PL_M_MASK;
      if (!x || x == owner_id) {
        continue;
      }
      int *C;
      for (C = P; C < B; C++) {
        if ((*C & PL_M_MASK) == x) {
          break;
        }
      }
      if (C < B) {
        continue;
      }
      x = A[-1];
    }
    *B++ = x;
  }
  *B = -1;
  PL = B - P;
  return PL;
}
