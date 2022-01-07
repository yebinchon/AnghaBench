
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMIN_EPS ;
 int KMIN_MAXCALL ;
 int KMIN_RADIUS ;
 int f_Chebyquad ;
 double kmin_hj (int ,int,double*,int ,int ,int ,int ) ;
 scalar_t__ n_evals ;
 int printf (char*,...) ;

int main()
{
 double x[20], y;
 int n, i;
 printf("\nMinimizer: Hooke-Jeeves\n");
 for (n = 2; n <= 8; n += 2) {
  for (i = 0; i != n; ++i) x[i] = (double)(i + 1) / n;
  n_evals = 0;
  y = kmin_hj(f_Chebyquad, n, x, 0, KMIN_RADIUS, KMIN_EPS, KMIN_MAXCALL);
  printf("n=%d,min=%.8lg,n_evals=%d\n", n, y, n_evals);
 }
 printf("\n");
 return 0;
}
