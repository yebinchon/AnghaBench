
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* R ;

__attribute__((used)) static void sort_res (int a, int b) {
  int i, j, h, t;
  if (a >= b) {
    return;
  }
  h = R[(a+b)>>1];
  i = a;
  j = b;
  do {
    while (R[i] < h) { i++; }
    while (R[j] > h) { j--; }
    if (i <= j) {
      t = R[i]; R[i++] = R[j]; R[j--] = t;
    }
  } while (i <= j);
  sort_res (a, j);
  sort_res (i, b);
}
