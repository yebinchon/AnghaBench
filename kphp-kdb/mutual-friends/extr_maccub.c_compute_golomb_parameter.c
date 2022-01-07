
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int* golomb_crit ;

int compute_golomb_parameter (int N, int K) {
  if (K == 0) {
    return 1;
  }
  assert (K > 0 && K <= N);
  long long t = (long long) 2*5278688*N / K + (7615537-5278688);
  if (t <= 167474174) {
    int i;
    for (i = 1; i <= 10; i++) {
      if ((int) t <= golomb_crit[i-1]) {
        return i;
      }
    }
  }
  int u = t / (2*7615537);
  return u;
}
