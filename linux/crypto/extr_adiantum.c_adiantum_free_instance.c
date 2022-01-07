
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int dummy; } ;
struct adiantum_instance_ctx {int hash_spawn; int blockcipher_spawn; int streamcipher_spawn; } ;


 int crypto_drop_shash (int *) ;
 int crypto_drop_skcipher (int *) ;
 int crypto_drop_spawn (int *) ;
 int kfree (struct skcipher_instance*) ;
 struct adiantum_instance_ctx* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static void adiantum_free_instance(struct skcipher_instance *inst)
{
 struct adiantum_instance_ctx *ictx = skcipher_instance_ctx(inst);

 crypto_drop_skcipher(&ictx->streamcipher_spawn);
 crypto_drop_spawn(&ictx->blockcipher_spawn);
 crypto_drop_shash(&ictx->hash_spawn);
 kfree(inst);
}
