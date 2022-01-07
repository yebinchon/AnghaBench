
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTERS_PRIME ;
 int* Counters ;
 int* T ;
 int fprintf (int ,char*,int) ;
 int stdout ;

void counter_add (int counter_id) {
  int h1, h2;
  int D;
  if (!counter_id) { return; }

  h1 = h2 = counter_id;
  if (h1 < 0) { h1 = 17-h1; }
  h1 = h1 % COUNTERS_PRIME;
  if (h2 < 0) { h2 = 17239-h2; }
  if (h1 < 0 || h2 < 0) { return; }
  h2 = 1 + (h2 % (COUNTERS_PRIME - 1));
  while ((D = Counters[h1]) != 0) {
    if (D == counter_id) {
      T[h1]++;
      return;
    }
    h1 += h2;
    if (h1 >= COUNTERS_PRIME) { h1 -= COUNTERS_PRIME; }
  }
  Counters[h1] = counter_id;
  T[h1] = 1;
  fprintf (stdout, "%d\n", counter_id);
  return;
}
