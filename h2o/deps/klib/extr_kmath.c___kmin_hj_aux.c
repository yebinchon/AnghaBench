
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double (* kmin_f ) (int,double*,void*) ;



__attribute__((used)) static double __kmin_hj_aux(kmin_f func, int n, double *x1, void *data, double fx1, double *dx, int *n_calls)
{
 int k, j = *n_calls;
 double ftmp;
 for (k = 0; k != n; ++k) {
  x1[k] += dx[k];
  ftmp = func(n, x1, data); ++j;
  if (ftmp < fx1) fx1 = ftmp;
  else {
   dx[k] = 0.0 - dx[k];
   x1[k] += dx[k] + dx[k];
   ftmp = func(n, x1, data); ++j;
   if (ftmp < fx1) fx1 = ftmp;
   else x1[k] -= dx[k];
  }
 }
 *n_calls = j;
 return fx1;
}
