
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct TYPE_3__ {int cra_ctxsize; } ;
struct TYPE_4__ {int ivsize; TYPE_1__ base; int exit; int init; int decrypt; int encrypt; } ;
struct aead_instance {int (* free ) (struct aead_instance*) ;TYPE_2__ alg; } ;
struct aead_geniv_ctx {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct aead_instance*) ;
 int PTR_ERR (struct aead_instance*) ;
 int aead_exit_geniv ;
 struct aead_instance* aead_geniv_alloc (struct crypto_template*,struct rtattr**,int ,int ) ;
 int aead_geniv_free (struct aead_instance*) ;
 int aead_init_geniv ;
 int aead_register_instance (struct crypto_template*,struct aead_instance*) ;
 int echainiv_decrypt ;
 int echainiv_encrypt ;

__attribute__((used)) static int echainiv_aead_create(struct crypto_template *tmpl,
    struct rtattr **tb)
{
 struct aead_instance *inst;
 int err;

 inst = aead_geniv_alloc(tmpl, tb, 0, 0);

 if (IS_ERR(inst))
  return PTR_ERR(inst);

 err = -EINVAL;
 if (inst->alg.ivsize & (sizeof(u64) - 1) || !inst->alg.ivsize)
  goto free_inst;

 inst->alg.encrypt = echainiv_encrypt;
 inst->alg.decrypt = echainiv_decrypt;

 inst->alg.init = aead_init_geniv;
 inst->alg.exit = aead_exit_geniv;

 inst->alg.base.cra_ctxsize = sizeof(struct aead_geniv_ctx);
 inst->alg.base.cra_ctxsize += inst->alg.ivsize;

 inst->free = aead_geniv_free;

 err = aead_register_instance(tmpl, inst);
 if (err)
  goto free_inst;

out:
 return err;

free_inst:
 aead_geniv_free(inst);
 goto out;
}
