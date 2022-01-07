
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int* golomb_crit ;

__attribute__((used)) static int compute_golomb_parameter (int N, int K) {
  assert (K > 0 && K <= N);
  long long t = (long long) 2*5278688*N / K;
  if (t <= 165137325) {
    int i = 0;
    do {
      if ((int) t <= golomb_crit[i]) {
        return i + 1;
      }
    } while (++i <= 8);
    return 10;
  }
  return (int) ((t + (7615537-5278688)) / (2*7615537));
}
