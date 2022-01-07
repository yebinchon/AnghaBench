
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INITIAL_INV_D ;
 int INITIAL_LAMBDA ;
 int sqrt (double) ;

__attribute__((used)) static inline double compute_ad_lambda_delta (int price, double sump0, double sump1, double sump2, double *delta) {
  if (sump1 <= 0 || sump2 <= 0) {
    *delta = price / sqrt (INITIAL_INV_D / 3);
    return price * INITIAL_LAMBDA;
  }
  double lambda, D = sump2;
  if (sump0) {
    lambda = sump0 / sump1;
    lambda = sump0 / (sump1 + lambda * sump2);
    D += sump0 / (lambda*lambda);
  } else {
    lambda = - sump1 / sump2;
  }
  lambda = (D * lambda + INITIAL_INV_D * INITIAL_LAMBDA) / (D + INITIAL_INV_D);
  D += INITIAL_INV_D;
  *delta = price / sqrt (D / 3);
  return lambda * price;
}
