
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** C ;
 int const lrand48 () ;
 int max_port ;
 int min_port ;

int choose_random_tid (void) {
  const int n = max_port - min_port + 1;
  int tid = lrand48 () % n, steps = n;
  while (--steps >= 0) {
    if (C[min_port + tid] == ((void*)0)) {
      return min_port + tid;
    }
    tid = (tid + 1) % n;
  }
  return -1;
}
