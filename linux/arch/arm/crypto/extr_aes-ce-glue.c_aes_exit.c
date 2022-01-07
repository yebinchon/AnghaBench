
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* aes_algs ;
 scalar_t__* aes_simd_algs ;
 int crypto_unregister_skciphers (scalar_t__*,int) ;
 int simd_skcipher_free (scalar_t__) ;

__attribute__((used)) static void aes_exit(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(aes_simd_algs) && aes_simd_algs[i]; i++)
  simd_skcipher_free(aes_simd_algs[i]);

 crypto_unregister_skciphers(aes_algs, ARRAY_SIZE(aes_algs));
}
