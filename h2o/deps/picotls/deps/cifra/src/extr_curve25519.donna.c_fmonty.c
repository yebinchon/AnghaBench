
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const limb ;


 int fdifference (int const*,int const*) ;
 int fproduct (int const*,int const*,int const*) ;
 int freduce_coefficients (int const*) ;
 int freduce_degree (int const*) ;
 int fscalar_product (int const*,int const*,int) ;
 int fsquare (int const*,int const*) ;
 int fsum (int const*,int const*) ;
 int memcpy (int const*,int const*,int) ;
 int memset (int const*,int ,int) ;

__attribute__((used)) static void fmonty(limb *x2, limb *z2,
                   limb *x3, limb *z3,
                   limb *x, limb *z,
                   limb *xprime, limb *zprime,
                   const limb *qmqp ) {
  limb origx[10], origxprime[10], zzz[19], xx[19], zz[19], xxprime[19],
        zzprime[19], zzzprime[19], xxxprime[19];

  memcpy(origx, x, 10 * sizeof(limb));
  fsum(x, z);

  fdifference(z, origx);


  memcpy(origxprime, xprime, sizeof(limb) * 10);
  fsum(xprime, zprime);

  fdifference(zprime, origxprime);

  fproduct(xxprime, xprime, z);



  fproduct(zzprime, x, zprime);

  freduce_degree(xxprime);
  freduce_coefficients(xxprime);

  freduce_degree(zzprime);
  freduce_coefficients(zzprime);

  memcpy(origxprime, xxprime, sizeof(limb) * 10);
  fsum(xxprime, zzprime);

  fdifference(zzprime, origxprime);

  fsquare(xxxprime, xxprime);

  fsquare(zzzprime, zzprime);

  fproduct(zzprime, zzzprime, qmqp);

  freduce_degree(zzprime);
  freduce_coefficients(zzprime);

  memcpy(x3, xxxprime, sizeof(limb) * 10);
  memcpy(z3, zzprime, sizeof(limb) * 10);

  fsquare(xx, x);

  fsquare(zz, z);

  fproduct(x2, xx, zz);

  freduce_degree(x2);
  freduce_coefficients(x2);

  fdifference(zz, xx);

  memset(zzz + 10, 0, sizeof(limb) * 9);
  fscalar_product(zzz, zz, 121665);



  freduce_coefficients(zzz);

  fsum(zzz, xx);

  fproduct(z2, zz, zzz);

  freduce_degree(z2);
  freduce_coefficients(z2);

}
