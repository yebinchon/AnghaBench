
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* R ;

__attribute__((used)) static void sort_res2 (int a, int b) {
  int i, j, h;
  long long t;
  if (a >= b) {
    return;
  }
  h = R[(a+b)&-2];
  i = a;
  j = b;
  do {
    while (R[2*i] < h) { i++; }
    while (R[2*j] > h) { j--; }
    if (i <= j) {
      t = ((long long *)R)[i]; ((long long *)R)[i++] = ((long long *)R)[j]; ((long long *)R)[j--] = t;
    }
  } while (i <= j);
  sort_res2 (a, j);
  sort_res2 (i, b);
}
