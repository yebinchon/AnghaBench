
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct authenc_esn_instance_ctx {int auth; int enc; } ;
struct aead_instance {int dummy; } ;


 struct authenc_esn_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 int crypto_drop_ahash (int *) ;
 int crypto_drop_skcipher (int *) ;
 int kfree (struct aead_instance*) ;

__attribute__((used)) static void crypto_authenc_esn_free(struct aead_instance *inst)
{
 struct authenc_esn_instance_ctx *ctx = aead_instance_ctx(inst);

 crypto_drop_skcipher(&ctx->enc);
 crypto_drop_ahash(&ctx->auth);
 kfree(inst);
}
