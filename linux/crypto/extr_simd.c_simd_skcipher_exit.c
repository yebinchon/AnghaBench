
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simd_skcipher_ctx {int cryptd_tfm; } ;
struct crypto_skcipher {int dummy; } ;


 int cryptd_free_skcipher (int ) ;
 struct simd_skcipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void simd_skcipher_exit(struct crypto_skcipher *tfm)
{
 struct simd_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);

 cryptd_free_skcipher(ctx->cryptd_tfm);
}
