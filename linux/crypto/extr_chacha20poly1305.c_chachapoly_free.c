
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chachapoly_instance_ctx {int poly; int chacha; } ;
struct aead_instance {int dummy; } ;


 struct chachapoly_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 int crypto_drop_ahash (int *) ;
 int crypto_drop_skcipher (int *) ;
 int kfree (struct aead_instance*) ;

__attribute__((used)) static void chachapoly_free(struct aead_instance *inst)
{
 struct chachapoly_instance_ctx *ctx = aead_instance_ctx(inst);

 crypto_drop_skcipher(&ctx->chacha);
 crypto_drop_ahash(&ctx->poly);
 kfree(inst);
}
