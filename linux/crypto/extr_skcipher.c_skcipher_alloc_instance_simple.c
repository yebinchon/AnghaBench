
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int cra_ctxsize; int cra_priority; int cra_alignmask; int cra_blocksize; } ;
struct TYPE_6__ {int exit; int init; int setkey; TYPE_2__ base; int ivsize; int max_keysize; int min_keysize; } ;
struct skcipher_instance {TYPE_3__ alg; int free; } ;
struct skcipher_ctx_simple {int dummy; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int name; } ;
struct crypto_spawn {int dummy; } ;
struct TYPE_4__ {int cia_max_keysize; int cia_min_keysize; } ;
struct crypto_attr_type {int type; int mask; int cra_blocksize; TYPE_1__ cra_cipher; int cra_priority; int cra_alignmask; } ;
struct crypto_alg {int type; int mask; int cra_blocksize; TYPE_1__ cra_cipher; int cra_priority; int cra_alignmask; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 int CRYPTO_ALG_TYPE_CIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_SKCIPHER ;
 int EINVAL ;
 int ENOMEM ;
 struct skcipher_instance* ERR_CAST (struct crypto_attr_type*) ;
 struct skcipher_instance* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_attr_type*) ;
 struct crypto_attr_type* crypto_get_attr_alg (struct rtattr**,int ,int) ;
 struct crypto_attr_type* crypto_get_attr_type (struct rtattr**) ;
 int crypto_init_spawn (struct crypto_spawn*,struct crypto_attr_type*,int ,int) ;
 int crypto_inst_setname (int ,int ,struct crypto_attr_type*) ;
 int crypto_mod_put (struct crypto_attr_type*) ;
 int crypto_requires_off (int,int,int ) ;
 int kfree (struct skcipher_instance*) ;
 struct skcipher_instance* kzalloc (int,int ) ;
 int skcipher_crypto_instance (struct skcipher_instance*) ;
 int skcipher_exit_tfm_simple ;
 int skcipher_free_instance_simple ;
 int skcipher_init_tfm_simple ;
 struct crypto_spawn* skcipher_instance_ctx (struct skcipher_instance*) ;
 int skcipher_setkey_simple ;

struct skcipher_instance *
skcipher_alloc_instance_simple(struct crypto_template *tmpl, struct rtattr **tb,
          struct crypto_alg **cipher_alg_ret)
{
 struct crypto_attr_type *algt;
 struct crypto_alg *cipher_alg;
 struct skcipher_instance *inst;
 struct crypto_spawn *spawn;
 u32 mask;
 int err;

 algt = crypto_get_attr_type(tb);
 if (IS_ERR(algt))
  return ERR_CAST(algt);

 if ((algt->type ^ CRYPTO_ALG_TYPE_SKCIPHER) & algt->mask)
  return ERR_PTR(-EINVAL);

 mask = CRYPTO_ALG_TYPE_MASK |
  crypto_requires_off(algt->type, algt->mask,
        CRYPTO_ALG_NEED_FALLBACK);

 cipher_alg = crypto_get_attr_alg(tb, CRYPTO_ALG_TYPE_CIPHER, mask);
 if (IS_ERR(cipher_alg))
  return ERR_CAST(cipher_alg);

 inst = kzalloc(sizeof(*inst) + sizeof(*spawn), GFP_KERNEL);
 if (!inst) {
  err = -ENOMEM;
  goto err_put_cipher_alg;
 }
 spawn = skcipher_instance_ctx(inst);

 err = crypto_inst_setname(skcipher_crypto_instance(inst), tmpl->name,
      cipher_alg);
 if (err)
  goto err_free_inst;

 err = crypto_init_spawn(spawn, cipher_alg,
    skcipher_crypto_instance(inst),
    CRYPTO_ALG_TYPE_MASK);
 if (err)
  goto err_free_inst;
 inst->free = skcipher_free_instance_simple;


 inst->alg.base.cra_blocksize = cipher_alg->cra_blocksize;
 inst->alg.base.cra_alignmask = cipher_alg->cra_alignmask;
 inst->alg.base.cra_priority = cipher_alg->cra_priority;
 inst->alg.min_keysize = cipher_alg->cra_cipher.cia_min_keysize;
 inst->alg.max_keysize = cipher_alg->cra_cipher.cia_max_keysize;
 inst->alg.ivsize = cipher_alg->cra_blocksize;


 inst->alg.base.cra_ctxsize = sizeof(struct skcipher_ctx_simple);
 inst->alg.setkey = skcipher_setkey_simple;
 inst->alg.init = skcipher_init_tfm_simple;
 inst->alg.exit = skcipher_exit_tfm_simple;

 *cipher_alg_ret = cipher_alg;
 return inst;

err_free_inst:
 kfree(inst);
err_put_cipher_alg:
 crypto_mod_put(cipher_alg);
 return ERR_PTR(err);
}
