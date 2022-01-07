
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rtattr {int dummy; } ;
struct pcrypt_instance_ctx {int spawn; } ;
struct pcrypt_aead_ctx {int dummy; } ;
struct crypto_template {int dummy; } ;
typedef char const crypto_attr_type ;
struct TYPE_3__ {int cra_ctxsize; int cra_flags; } ;
struct TYPE_4__ {int decrypt; int encrypt; int setauthsize; int setkey; int exit; int init; TYPE_1__ base; int maxauthsize; int ivsize; } ;
struct aead_instance {int free; TYPE_2__ alg; } ;
struct aead_alg {int base; } ;


 int CRYPTO_ALG_ASYNC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char const*) ;
 int PTR_ERR (char const*) ;
 int aead_crypto_instance (struct aead_instance*) ;
 struct pcrypt_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 int aead_register_instance (struct crypto_template*,struct aead_instance*) ;
 int crypto_aead_alg_ivsize (struct aead_alg*) ;
 int crypto_aead_alg_maxauthsize (struct aead_alg*) ;
 char* crypto_attr_alg_name (struct rtattr*) ;
 int crypto_drop_aead (int *) ;
 char* crypto_get_attr_type (struct rtattr**) ;
 int crypto_grab_aead (int *,char const*,int ,int ) ;
 int crypto_set_aead_spawn (int *,int ) ;
 struct aead_alg* crypto_spawn_aead_alg (int *) ;
 int kfree (struct aead_instance*) ;
 struct aead_instance* kzalloc (int,int ) ;
 int pcrypt_aead_decrypt ;
 int pcrypt_aead_encrypt ;
 int pcrypt_aead_exit_tfm ;
 int pcrypt_aead_init_tfm ;
 int pcrypt_aead_setauthsize ;
 int pcrypt_aead_setkey ;
 int pcrypt_free ;
 int pcrypt_init_instance (int ,int *) ;

__attribute__((used)) static int pcrypt_create_aead(struct crypto_template *tmpl, struct rtattr **tb,
         u32 type, u32 mask)
{
 struct pcrypt_instance_ctx *ctx;
 struct crypto_attr_type *algt;
 struct aead_instance *inst;
 struct aead_alg *alg;
 const char *name;
 int err;

 algt = crypto_get_attr_type(tb);
 if (IS_ERR(algt))
  return PTR_ERR(algt);

 name = crypto_attr_alg_name(tb[1]);
 if (IS_ERR(name))
  return PTR_ERR(name);

 inst = kzalloc(sizeof(*inst) + sizeof(*ctx), GFP_KERNEL);
 if (!inst)
  return -ENOMEM;

 ctx = aead_instance_ctx(inst);
 crypto_set_aead_spawn(&ctx->spawn, aead_crypto_instance(inst));

 err = crypto_grab_aead(&ctx->spawn, name, 0, 0);
 if (err)
  goto out_free_inst;

 alg = crypto_spawn_aead_alg(&ctx->spawn);
 err = pcrypt_init_instance(aead_crypto_instance(inst), &alg->base);
 if (err)
  goto out_drop_aead;

 inst->alg.base.cra_flags = CRYPTO_ALG_ASYNC;

 inst->alg.ivsize = crypto_aead_alg_ivsize(alg);
 inst->alg.maxauthsize = crypto_aead_alg_maxauthsize(alg);

 inst->alg.base.cra_ctxsize = sizeof(struct pcrypt_aead_ctx);

 inst->alg.init = pcrypt_aead_init_tfm;
 inst->alg.exit = pcrypt_aead_exit_tfm;

 inst->alg.setkey = pcrypt_aead_setkey;
 inst->alg.setauthsize = pcrypt_aead_setauthsize;
 inst->alg.encrypt = pcrypt_aead_encrypt;
 inst->alg.decrypt = pcrypt_aead_decrypt;

 inst->free = pcrypt_free;

 err = aead_register_instance(tmpl, inst);
 if (err)
  goto out_drop_aead;

out:
 return err;

out_drop_aead:
 crypto_drop_aead(&ctx->spawn);
out_free_inst:
 kfree(inst);
 goto out;
}
