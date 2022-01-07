
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simd_aead_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct crypto_aead base; } ;


 struct simd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (struct crypto_aead*,unsigned int) ;

__attribute__((used)) static int simd_aead_setauthsize(struct crypto_aead *tfm, unsigned int authsize)
{
 struct simd_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct crypto_aead *child = &ctx->cryptd_tfm->base;

 return crypto_aead_setauthsize(child, authsize);
}
