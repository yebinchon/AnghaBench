
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cra_blocksize; int cra_ctxsize; int cra_exit; int cra_init; scalar_t__ cra_alignmask; int cra_priority; } ;
struct TYPE_4__ {int digestsize; int statesize; int setkey; int import; int export; int finup; int final; int update; int init; TYPE_1__ base; } ;
struct crypto_alg {int cra_blocksize; scalar_t__ cra_alignmask; int cra_priority; } ;
struct shash_instance {int digestsize; int statesize; TYPE_2__ alg; struct crypto_alg base; } ;
struct shash_alg {int digestsize; int statesize; TYPE_2__ alg; struct crypto_alg base; } ;
struct rtattr {int dummy; } ;
struct hmac_ctx {int dummy; } ;
struct crypto_template {int dummy; } ;


 int ALIGN (int,scalar_t__) ;
 int CRYPTO_ALG_TYPE_SHASH ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct shash_instance*) ;
 int PTR_ERR (struct shash_instance*) ;
 int crypto_check_attr_type (struct rtattr**,int ) ;
 int crypto_init_shash_spawn (int ,struct shash_instance*,int ) ;
 int crypto_mod_put (struct crypto_alg*) ;
 scalar_t__ crypto_shash_alg_has_setkey (struct shash_instance*) ;
 scalar_t__ crypto_tfm_ctx_alignment () ;
 int hmac_exit_tfm ;
 int hmac_export ;
 int hmac_final ;
 int hmac_finup ;
 int hmac_import ;
 int hmac_init ;
 int hmac_init_tfm ;
 int hmac_setkey ;
 int hmac_update ;
 struct shash_instance* shash_alloc_instance (char*,struct crypto_alg*) ;
 struct shash_instance* shash_attr_alg (struct rtattr*,int ,int ) ;
 int shash_crypto_instance (struct shash_instance*) ;
 int shash_free_instance (int ) ;
 int shash_instance_ctx (struct shash_instance*) ;
 int shash_register_instance (struct crypto_template*,struct shash_instance*) ;

__attribute__((used)) static int hmac_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct shash_instance *inst;
 struct crypto_alg *alg;
 struct shash_alg *salg;
 int err;
 int ds;
 int ss;

 err = crypto_check_attr_type(tb, CRYPTO_ALG_TYPE_SHASH);
 if (err)
  return err;

 salg = shash_attr_alg(tb[1], 0, 0);
 if (IS_ERR(salg))
  return PTR_ERR(salg);
 alg = &salg->base;


 err = -EINVAL;
 if (crypto_shash_alg_has_setkey(salg))
  goto out_put_alg;

 ds = salg->digestsize;
 ss = salg->statesize;
 if (ds > alg->cra_blocksize ||
     ss < alg->cra_blocksize)
  goto out_put_alg;

 inst = shash_alloc_instance("hmac", alg);
 err = PTR_ERR(inst);
 if (IS_ERR(inst))
  goto out_put_alg;

 err = crypto_init_shash_spawn(shash_instance_ctx(inst), salg,
          shash_crypto_instance(inst));
 if (err)
  goto out_free_inst;

 inst->alg.base.cra_priority = alg->cra_priority;
 inst->alg.base.cra_blocksize = alg->cra_blocksize;
 inst->alg.base.cra_alignmask = alg->cra_alignmask;

 ss = ALIGN(ss, alg->cra_alignmask + 1);
 inst->alg.digestsize = ds;
 inst->alg.statesize = ss;

 inst->alg.base.cra_ctxsize = sizeof(struct hmac_ctx) +
         ALIGN(ss * 2, crypto_tfm_ctx_alignment());

 inst->alg.base.cra_init = hmac_init_tfm;
 inst->alg.base.cra_exit = hmac_exit_tfm;

 inst->alg.init = hmac_init;
 inst->alg.update = hmac_update;
 inst->alg.final = hmac_final;
 inst->alg.finup = hmac_finup;
 inst->alg.export = hmac_export;
 inst->alg.import = hmac_import;
 inst->alg.setkey = hmac_setkey;

 err = shash_register_instance(tmpl, inst);
 if (err) {
out_free_inst:
  shash_free_instance(shash_crypto_instance(inst));
 }

out_put_alg:
 crypto_mod_put(alg);
 return err;
}
