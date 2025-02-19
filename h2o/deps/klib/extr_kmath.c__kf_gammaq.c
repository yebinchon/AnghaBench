
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KF_GAMMA_EPS ;
 double KF_TINY ;
 double exp (double) ;
 scalar_t__ fabs (double) ;
 double kf_lgamma (double) ;
 double log (double) ;

__attribute__((used)) static double _kf_gammaq(double s, double z)
{
 int j;
 double C, D, f;
 f = 1. + z - s; C = f; D = 0.;


 for (j = 1; j < 100; ++j) {
  double a = j * (s - j), b = (j<<1) + 1 + z - s, d;
  D = b + a * D;
  if (D < KF_TINY) D = KF_TINY;
  C = b + a / C;
  if (C < KF_TINY) C = KF_TINY;
  D = 1. / D;
  d = C * D;
  f *= d;
  if (fabs(d - 1.) < KF_GAMMA_EPS) break;
 }
 return exp(s * log(z) - z - kf_lgamma(s) - log(f));
}
