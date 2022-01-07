
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cra_alignmask; void* cra_blocksize; } ;
struct TYPE_4__ {int decrypt; int encrypt; void* ivsize; TYPE_1__ base; } ;
struct skcipher_instance {int (* free ) (struct skcipher_instance*) ;TYPE_2__ alg; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_kw_block {int dummy; } ;
struct crypto_alg {int cra_blocksize; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct skcipher_instance*) ;
 int PTR_ERR (struct skcipher_instance*) ;
 void* SEMIBSIZE ;
 int crypto_kw_decrypt ;
 int crypto_kw_encrypt ;
 int crypto_mod_put (struct crypto_alg*) ;
 struct skcipher_instance* skcipher_alloc_instance_simple (struct crypto_template*,struct rtattr**,struct crypto_alg**) ;
 int skcipher_register_instance (struct crypto_template*,struct skcipher_instance*) ;
 int stub1 (struct skcipher_instance*) ;

__attribute__((used)) static int crypto_kw_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct skcipher_instance *inst;
 struct crypto_alg *alg;
 int err;

 inst = skcipher_alloc_instance_simple(tmpl, tb, &alg);
 if (IS_ERR(inst))
  return PTR_ERR(inst);

 err = -EINVAL;

 if (alg->cra_blocksize != sizeof(struct crypto_kw_block))
  goto out_free_inst;

 inst->alg.base.cra_blocksize = SEMIBSIZE;
 inst->alg.base.cra_alignmask = 0;
 inst->alg.ivsize = SEMIBSIZE;

 inst->alg.encrypt = crypto_kw_encrypt;
 inst->alg.decrypt = crypto_kw_decrypt;

 err = skcipher_register_instance(tmpl, inst);
 if (err)
  goto out_free_inst;
 goto out_put_alg;

out_free_inst:
 inst->free(inst);
out_put_alg:
 crypto_mod_put(alg);
 return err;
}
