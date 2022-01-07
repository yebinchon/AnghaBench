
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcrypt_instance_ctx {int spawn; } ;
struct aead_instance {int dummy; } ;


 struct pcrypt_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 int crypto_drop_aead (int *) ;
 int kfree (struct aead_instance*) ;

__attribute__((used)) static void pcrypt_free(struct aead_instance *inst)
{
 struct pcrypt_instance_ctx *ctx = aead_instance_ctx(inst);

 crypto_drop_aead(&ctx->spawn);
 kfree(inst);
}
