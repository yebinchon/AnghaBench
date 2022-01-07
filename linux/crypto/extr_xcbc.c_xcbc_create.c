
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xcbc_tfm_ctx {int dummy; } ;
struct xcbc_desc_ctx {int dummy; } ;
struct TYPE_3__ {unsigned long cra_alignmask; int cra_blocksize; int cra_exit; int cra_init; void* cra_ctxsize; int cra_priority; } ;
struct TYPE_4__ {int digestsize; int setkey; int final; int update; int init; TYPE_1__ base; void* descsize; } ;
struct shash_instance {int cra_blocksize; int cra_alignmask; TYPE_2__ alg; int cra_priority; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_alg {int cra_blocksize; int cra_alignmask; TYPE_2__ alg; int cra_priority; } ;


 void* ALIGN (int,unsigned long) ;
 int CRYPTO_ALG_TYPE_CIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_SHASH ;
 scalar_t__ IS_ERR (struct shash_instance*) ;
 int PTR_ERR (struct shash_instance*) ;

 int crypto_check_attr_type (struct rtattr**,int ) ;
 struct shash_instance* crypto_get_attr_alg (struct rtattr**,int ,int ) ;
 int crypto_init_spawn (int ,struct shash_instance*,int ,int ) ;
 int crypto_mod_put (struct shash_instance*) ;
 int crypto_tfm_ctx_alignment () ;
 int crypto_xcbc_digest_final ;
 int crypto_xcbc_digest_init ;
 int crypto_xcbc_digest_setkey ;
 int crypto_xcbc_digest_update ;
 struct shash_instance* shash_alloc_instance (char*,struct shash_instance*) ;
 int shash_crypto_instance (struct shash_instance*) ;
 int shash_free_instance (int ) ;
 int shash_instance_ctx (struct shash_instance*) ;
 int shash_register_instance (struct crypto_template*,struct shash_instance*) ;
 int xcbc_exit_tfm ;
 int xcbc_init_tfm ;

__attribute__((used)) static int xcbc_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct shash_instance *inst;
 struct crypto_alg *alg;
 unsigned long alignmask;
 int err;

 err = crypto_check_attr_type(tb, CRYPTO_ALG_TYPE_SHASH);
 if (err)
  return err;

 alg = crypto_get_attr_alg(tb, CRYPTO_ALG_TYPE_CIPHER,
      CRYPTO_ALG_TYPE_MASK);
 if (IS_ERR(alg))
  return PTR_ERR(alg);

 switch(alg->cra_blocksize) {
 case 128:
  break;
 default:
  goto out_put_alg;
 }

 inst = shash_alloc_instance("xcbc", alg);
 err = PTR_ERR(inst);
 if (IS_ERR(inst))
  goto out_put_alg;

 err = crypto_init_spawn(shash_instance_ctx(inst), alg,
    shash_crypto_instance(inst),
    CRYPTO_ALG_TYPE_MASK);
 if (err)
  goto out_free_inst;

 alignmask = alg->cra_alignmask | 3;
 inst->alg.base.cra_alignmask = alignmask;
 inst->alg.base.cra_priority = alg->cra_priority;
 inst->alg.base.cra_blocksize = alg->cra_blocksize;

 inst->alg.digestsize = alg->cra_blocksize;
 inst->alg.descsize = ALIGN(sizeof(struct xcbc_desc_ctx),
       crypto_tfm_ctx_alignment()) +
        (alignmask &
         ~(crypto_tfm_ctx_alignment() - 1)) +
        alg->cra_blocksize * 2;

 inst->alg.base.cra_ctxsize = ALIGN(sizeof(struct xcbc_tfm_ctx),
        alignmask + 1) +
         alg->cra_blocksize * 2;
 inst->alg.base.cra_init = xcbc_init_tfm;
 inst->alg.base.cra_exit = xcbc_exit_tfm;

 inst->alg.init = crypto_xcbc_digest_init;
 inst->alg.update = crypto_xcbc_digest_update;
 inst->alg.final = crypto_xcbc_digest_final;
 inst->alg.setkey = crypto_xcbc_digest_setkey;

 err = shash_register_instance(tmpl, inst);
 if (err) {
out_free_inst:
  shash_free_instance(shash_crypto_instance(inst));
 }

out_put_alg:
 crypto_mod_put(alg);
 return err;
}
