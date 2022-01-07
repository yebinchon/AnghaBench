
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead_spawn {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cryptd_aead_request_ctx {int dummy; } ;
struct cryptd_aead_ctx {struct crypto_aead* child; } ;
struct aead_instance_ctx {struct crypto_aead_spawn aead_spawn; } ;
struct aead_instance {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_aead*) ;
 int PTR_ERR (struct crypto_aead*) ;
 struct aead_instance* aead_alg_instance (struct crypto_aead*) ;
 struct aead_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 struct cryptd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_reqsize (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int ) ;
 struct crypto_aead* crypto_spawn_aead (struct crypto_aead_spawn*) ;
 int max (unsigned int,int ) ;

__attribute__((used)) static int cryptd_aead_init_tfm(struct crypto_aead *tfm)
{
 struct aead_instance *inst = aead_alg_instance(tfm);
 struct aead_instance_ctx *ictx = aead_instance_ctx(inst);
 struct crypto_aead_spawn *spawn = &ictx->aead_spawn;
 struct cryptd_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct crypto_aead *cipher;

 cipher = crypto_spawn_aead(spawn);
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 ctx->child = cipher;
 crypto_aead_set_reqsize(
  tfm, max((unsigned)sizeof(struct cryptd_aead_request_ctx),
    crypto_aead_reqsize(cipher)));
 return 0;
}
