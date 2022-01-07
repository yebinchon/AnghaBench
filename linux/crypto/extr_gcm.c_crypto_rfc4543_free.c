
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rfc4543_instance_ctx {int aead; } ;
struct aead_instance {int dummy; } ;


 struct crypto_rfc4543_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 int crypto_drop_aead (int *) ;
 int kfree (struct aead_instance*) ;

__attribute__((used)) static void crypto_rfc4543_free(struct aead_instance *inst)
{
 struct crypto_rfc4543_instance_ctx *ctx = aead_instance_ctx(inst);

 crypto_drop_aead(&ctx->aead);

 kfree(inst);
}
