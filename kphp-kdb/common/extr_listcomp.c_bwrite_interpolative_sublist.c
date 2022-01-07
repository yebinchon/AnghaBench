
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {int dummy; } ;


 int bwrite_interpolative_encode_value (struct bitwriter*,int const,int const) ;

void bwrite_interpolative_sublist (struct bitwriter *bw, int *L, int u, int v) {
  if (v - u <= 1) { return; }
  const int m = (u + v) >> 1,
            hi = L[v] - (v - m),
            lo = L[u] + (m - u),
             a = L[m] - lo,
             r = hi - lo + 1;
  bwrite_interpolative_encode_value (bw, a, r);
  bwrite_interpolative_sublist (bw, L, u, m);
  bwrite_interpolative_sublist (bw, L, m, v);
}
