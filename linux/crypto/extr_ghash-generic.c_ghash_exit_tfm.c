
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghash_ctx {scalar_t__ gf128; } ;
struct crypto_tfm {int dummy; } ;


 struct ghash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int gf128mul_free_4k (scalar_t__) ;

__attribute__((used)) static void ghash_exit_tfm(struct crypto_tfm *tfm)
{
 struct ghash_ctx *ctx = crypto_tfm_ctx(tfm);
 if (ctx->gf128)
  gf128mul_free_4k(ctx->gf128);
}
