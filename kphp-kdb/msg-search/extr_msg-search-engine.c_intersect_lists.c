
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int *intersect_lists (int *A, int *Ae, int *B, int *Be, int *D, int *De) {
  int x, *C = B;

  while (A < Ae) {
    x = *A++;
    if (x > 0) {
      while (B < Be && (unsigned) *B > (unsigned) x) B++;
      if (B == Be) continue;
      if (*B == x) {
 if (D < De) *D++ = x;
      }
    } else {
      while (C < Be && (unsigned) *C < (unsigned) x) C++;
      if (C == Be) continue;
      if (*C == x) {
 if (D < De) *D++ = x;
      }
    }
  }

  return D;
}
