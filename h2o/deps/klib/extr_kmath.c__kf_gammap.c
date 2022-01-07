
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double KF_GAMMA_EPS ;
 double exp (double) ;
 double kf_lgamma (double) ;
 double log (double) ;

__attribute__((used)) static double _kf_gammap(double s, double z)
{
 double sum, x;
 int k;
 for (k = 1, sum = x = 1.; k < 100; ++k) {
  sum += (x *= z / (s + k));
  if (x / sum < KF_GAMMA_EPS) break;
 }
 return exp(s * log(z) - z - kf_lgamma(s + 1.) + log(sum));
}
