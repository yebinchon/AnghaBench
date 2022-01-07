
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* Counters ;
 int* T ;

__attribute__((used)) static void qsort_i (int a, int b) {
  int i, j;
  int h;
  if (a >= b) { return; }
  h = T[(a+b)>>1];
  i = a;
  j = b;
  do {
    while (T[i] < h) { i++; }
    while (T[j] > h) { j--; }
    if (i <= j) {
      int t = T[i]; T[i] = T[j]; T[j] = t;
      t = Counters[i]; Counters[i] = Counters[j]; Counters[j] = t;
      i++; j--;
    }
  } while (i <= j);
  qsort_i (a, j);
  qsort_i (i, b);
}
