
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cra_blocksize; } ;
struct TYPE_4__ {int chunksize; void* decrypt; void* encrypt; TYPE_1__ base; } ;
struct skcipher_instance {int (* free ) (struct skcipher_instance*) ;TYPE_2__ alg; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_alg {int cra_blocksize; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct skcipher_instance*) ;
 int PTR_ERR (struct skcipher_instance*) ;
 void* crypto_ctr_crypt ;
 int crypto_mod_put (struct crypto_alg*) ;
 struct skcipher_instance* skcipher_alloc_instance_simple (struct crypto_template*,struct rtattr**,struct crypto_alg**) ;
 int skcipher_register_instance (struct crypto_template*,struct skcipher_instance*) ;
 int stub1 (struct skcipher_instance*) ;

__attribute__((used)) static int crypto_ctr_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct skcipher_instance *inst;
 struct crypto_alg *alg;
 int err;

 inst = skcipher_alloc_instance_simple(tmpl, tb, &alg);
 if (IS_ERR(inst))
  return PTR_ERR(inst);


 err = -EINVAL;
 if (alg->cra_blocksize < 4)
  goto out_free_inst;


 if (alg->cra_blocksize % 4)
  goto out_free_inst;


 inst->alg.base.cra_blocksize = 1;





 inst->alg.chunksize = alg->cra_blocksize;

 inst->alg.encrypt = crypto_ctr_crypt;
 inst->alg.decrypt = crypto_ctr_crypt;

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
