
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmac_tfm_ctx {int dummy; } ;
struct vmac_desc_ctx {int dummy; } ;
struct TYPE_3__ {scalar_t__ cra_blocksize; int cra_ctxsize; int cra_exit; int cra_init; int cra_alignmask; int cra_priority; } ;
struct TYPE_4__ {int descsize; int digestsize; int setkey; int final; int update; int init; TYPE_1__ base; } ;
struct shash_instance {scalar_t__ cra_blocksize; TYPE_2__ alg; int cra_alignmask; int cra_priority; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int name; } ;
struct crypto_alg {scalar_t__ cra_blocksize; TYPE_2__ alg; int cra_alignmask; int cra_priority; } ;


 int CRYPTO_ALG_TYPE_CIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_SHASH ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct shash_instance*) ;
 int PTR_ERR (struct shash_instance*) ;
 scalar_t__ VMAC_NONCEBYTES ;
 int VMAC_TAG_LEN ;
 int crypto_check_attr_type (struct rtattr**,int ) ;
 struct shash_instance* crypto_get_attr_alg (struct rtattr**,int ,int ) ;
 int crypto_init_spawn (int ,struct shash_instance*,int ,int ) ;
 int crypto_mod_put (struct shash_instance*) ;
 struct shash_instance* shash_alloc_instance (int ,struct shash_instance*) ;
 int shash_crypto_instance (struct shash_instance*) ;
 int shash_free_instance (int ) ;
 int shash_instance_ctx (struct shash_instance*) ;
 int shash_register_instance (struct crypto_template*,struct shash_instance*) ;
 int vmac_exit_tfm ;
 int vmac_final ;
 int vmac_init ;
 int vmac_init_tfm ;
 int vmac_setkey ;
 int vmac_update ;

__attribute__((used)) static int vmac_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct shash_instance *inst;
 struct crypto_alg *alg;
 int err;

 err = crypto_check_attr_type(tb, CRYPTO_ALG_TYPE_SHASH);
 if (err)
  return err;

 alg = crypto_get_attr_alg(tb, CRYPTO_ALG_TYPE_CIPHER,
   CRYPTO_ALG_TYPE_MASK);
 if (IS_ERR(alg))
  return PTR_ERR(alg);

 err = -EINVAL;
 if (alg->cra_blocksize != VMAC_NONCEBYTES)
  goto out_put_alg;

 inst = shash_alloc_instance(tmpl->name, alg);
 err = PTR_ERR(inst);
 if (IS_ERR(inst))
  goto out_put_alg;

 err = crypto_init_spawn(shash_instance_ctx(inst), alg,
   shash_crypto_instance(inst),
   CRYPTO_ALG_TYPE_MASK);
 if (err)
  goto out_free_inst;

 inst->alg.base.cra_priority = alg->cra_priority;
 inst->alg.base.cra_blocksize = alg->cra_blocksize;
 inst->alg.base.cra_alignmask = alg->cra_alignmask;

 inst->alg.base.cra_ctxsize = sizeof(struct vmac_tfm_ctx);
 inst->alg.base.cra_init = vmac_init_tfm;
 inst->alg.base.cra_exit = vmac_exit_tfm;

 inst->alg.descsize = sizeof(struct vmac_desc_ctx);
 inst->alg.digestsize = VMAC_TAG_LEN / 8;
 inst->alg.init = vmac_init;
 inst->alg.update = vmac_update;
 inst->alg.final = vmac_final;
 inst->alg.setkey = vmac_setkey;

 err = shash_register_instance(tmpl, inst);
 if (err) {
out_free_inst:
  shash_free_instance(shash_crypto_instance(inst));
 }

out_put_alg:
 crypto_mod_put(alg);
 return err;
}
