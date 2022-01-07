
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simd_aead_alg {int dummy; } ;
struct aead_alg {int dummy; } ;


 int crypto_unregister_aeads (struct aead_alg*,int) ;
 int simd_aead_free (struct simd_aead_alg*) ;

void simd_unregister_aeads(struct aead_alg *algs, int count,
      struct simd_aead_alg **simd_algs)
{
 int i;

 crypto_unregister_aeads(algs, count);

 for (i = 0; i < count; i++) {
  if (simd_algs[i]) {
   simd_aead_free(simd_algs[i]);
   simd_algs[i] = ((void*)0);
  }
 }
}
