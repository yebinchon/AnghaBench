
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_alg {int dummy; } ;


 int crypto_unregister_ahash (struct ahash_alg*) ;

void crypto_unregister_ahashes(struct ahash_alg *algs, int count)
{
 int i;

 for (i = count - 1; i >= 0; --i)
  crypto_unregister_ahash(&algs[i]);
}
