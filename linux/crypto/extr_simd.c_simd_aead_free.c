
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simd_aead_alg {int alg; } ;


 int crypto_unregister_aead (int *) ;
 int kfree (struct simd_aead_alg*) ;

void simd_aead_free(struct simd_aead_alg *salg)
{
 crypto_unregister_aead(&salg->alg);
 kfree(salg);
}
