
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_alg {int dummy; } ;
struct simd_skcipher_alg {int dummy; } ;


 int crypto_unregister_skciphers (struct skcipher_alg*,int) ;
 int simd_skcipher_free (struct simd_skcipher_alg*) ;

void simd_unregister_skciphers(struct skcipher_alg *algs, int count,
          struct simd_skcipher_alg **simd_algs)
{
 int i;

 crypto_unregister_skciphers(algs, count);

 for (i = 0; i < count; i++) {
  if (simd_algs[i]) {
   simd_skcipher_free(simd_algs[i]);
   simd_algs[i] = ((void*)0);
  }
 }
}
