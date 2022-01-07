
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simd_skcipher_alg {int alg; } ;


 int crypto_unregister_skcipher (int *) ;
 int kfree (struct simd_skcipher_alg*) ;

void simd_skcipher_free(struct simd_skcipher_alg *salg)
{
 crypto_unregister_skcipher(&salg->alg);
 kfree(salg);
}
