
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scomp_alg {int dummy; } ;


 int crypto_unregister_scomp (struct scomp_alg*) ;

void crypto_unregister_scomps(struct scomp_alg *algs, int count)
{
 int i;

 for (i = count - 1; i >= 0; --i)
  crypto_unregister_scomp(&algs[i]);
}
