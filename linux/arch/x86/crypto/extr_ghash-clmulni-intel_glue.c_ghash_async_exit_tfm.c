
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghash_async_ctx {int cryptd_tfm; } ;
struct crypto_tfm {int dummy; } ;


 int cryptd_free_ahash (int ) ;
 struct ghash_async_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void ghash_async_exit_tfm(struct crypto_tfm *tfm)
{
 struct ghash_async_ctx *ctx = crypto_tfm_ctx(tfm);

 cryptd_free_ahash(ctx->cryptd_tfm);
}
