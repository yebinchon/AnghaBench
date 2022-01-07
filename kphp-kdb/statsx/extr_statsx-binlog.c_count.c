
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTERS_PRIME ;
 int* Counters ;
 int* T ;
 int printf (char*,int,int) ;
 int qsort_i (int ,int) ;

void count (void) {
  int i, n = 0;
  for (i = 0; i < COUNTERS_PRIME; i++) {
    if (Counters[i]) {
      Counters[n] = Counters[i];
      T[n] = T[i];
      n++;
    }
  }
  if (n > 0) {
    qsort_i (0, n - 1);
    for (i = n - 1; i >= 0 && i >= n - 100; i--) {
      printf ("%d\t%d\n", Counters[i], T[i]);
    }
  }
}
