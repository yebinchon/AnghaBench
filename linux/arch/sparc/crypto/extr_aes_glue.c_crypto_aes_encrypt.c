
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct crypto_sparc64_aes_ctx {int * key; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* encrypt ) (int *,int const*,int *) ;} ;


 struct crypto_sparc64_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int stub1 (int *,int const*,int *) ;

__attribute__((used)) static void crypto_aes_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct crypto_sparc64_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->ops->encrypt(&ctx->key[0], (const u32 *) src, (u32 *) dst);
}
