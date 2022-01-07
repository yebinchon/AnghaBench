
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher_spawn {int dummy; } ;
struct pkcs1pad_inst_ctx {struct crypto_akcipher_spawn spawn; } ;
struct akcipher_instance {int dummy; } ;


 struct pkcs1pad_inst_ctx* akcipher_instance_ctx (struct akcipher_instance*) ;
 int crypto_drop_akcipher (struct crypto_akcipher_spawn*) ;
 int kfree (struct akcipher_instance*) ;

__attribute__((used)) static void pkcs1pad_free(struct akcipher_instance *inst)
{
 struct pkcs1pad_inst_ctx *ctx = akcipher_instance_ctx(inst);
 struct crypto_akcipher_spawn *spawn = &ctx->spawn;

 crypto_drop_akcipher(spawn);
 kfree(inst);
}
