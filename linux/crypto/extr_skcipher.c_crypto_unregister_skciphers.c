
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_alg {int dummy; } ;


 int crypto_unregister_skcipher (struct skcipher_alg*) ;

void crypto_unregister_skciphers(struct skcipher_alg *algs, int count)
{
 int i;

 for (i = count - 1; i >= 0; --i)
  crypto_unregister_skcipher(&algs[i]);
}
