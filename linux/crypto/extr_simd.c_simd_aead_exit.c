
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simd_aead_ctx {int cryptd_tfm; } ;
struct crypto_aead {int dummy; } ;


 int cryptd_free_aead (int ) ;
 struct simd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static void simd_aead_exit(struct crypto_aead *tfm)
{
 struct simd_aead_ctx *ctx = crypto_aead_ctx(tfm);

 cryptd_free_aead(ctx->cryptd_tfm);
}
