
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acomp_alg {int dummy; } ;


 int crypto_unregister_acomp (struct acomp_alg*) ;

void crypto_unregister_acomps(struct acomp_alg *algs, int count)
{
 int i;

 for (i = count - 1; i >= 0; --i)
  crypto_unregister_acomp(&algs[i]);
}
