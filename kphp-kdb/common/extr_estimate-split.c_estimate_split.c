
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double exp (int) ;
 int log (int) ;
 int sqrt (double) ;

int estimate_split (int N, int K) {
  double x, a, tp, ta;
  int i;
  if (N <= 0 || K <= 0) {
    return 0;
  }
  if (K == 1) {
    return N;
  }
  if (N >= 100 && N >= 100*K) {
    x = (double) N / K;
    return (int) (x + 7*sqrt(x) + 1);
  }
  a = exp (N*log (1 - 1.0/K));
  x = a;
  i = 0;
  tp = 1 - 1e-9/K;
  ta = 1e-9/K/N;
  while (x < tp && i < N && !(a < ta && i*K > N)) {
    a *= N-i;
    a /= (K-1)*++i;
    x += a;
  }
  return i;
}
