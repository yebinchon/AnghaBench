
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* RR ;

__attribute__((used)) static void ursort (int *A, int L, int R) {
  int i, j, x, y;
  if (L >= R) {
    return;
  }
  x = RR[(L + R) >> 1];
  i = L; j = R;
  do {
    while (RR[i] < x) { i++; }
    while (x < RR[j]) { j--; }
    if (i <= j) {
      y = RR[i]; RR[i] = RR[j]; RR[j] = y;
      y = A[i]; A[i++] = A[j]; A[j--] = y;
    }
  } while (i <= j);
  ursort (A, L, j);
  ursort (A, i, R);
}
