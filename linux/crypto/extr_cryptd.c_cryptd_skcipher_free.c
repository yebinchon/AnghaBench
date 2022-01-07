
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipherd_instance_ctx {int spawn; } ;
struct skcipher_instance {int dummy; } ;


 int crypto_drop_skcipher (int *) ;
 int kfree (struct skcipher_instance*) ;
 struct skcipherd_instance_ctx* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static void cryptd_skcipher_free(struct skcipher_instance *inst)
{
 struct skcipherd_instance_ctx *ctx = skcipher_instance_ctx(inst);

 crypto_drop_skcipher(&ctx->spawn);
 kfree(inst);
}
