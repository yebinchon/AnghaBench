
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;

double km_ks_dist(int na, const double a[], int nb, const double b[])
{
 int ia = 0, ib = 0;
 double fa = 0, fb = 0, sup = 0, na1 = 1. / na, nb1 = 1. / nb;
 while (ia < na || ib < nb) {
  if (ia == na) fb += nb1, ++ib;
  else if (ib == nb) fa += na1, ++ia;
  else if (a[ia] < b[ib]) fa += na1, ++ia;
  else if (a[ia] > b[ib]) fb += nb1, ++ib;
  else fa += na1, fb += nb1, ++ia, ++ib;
  if (sup < fabs(fa - fb)) sup = fabs(fa - fb);
 }
 return sup;
}
