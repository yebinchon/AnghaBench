
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_flags; int cra_ctxsize; int cra_module; int cra_alignmask; int cra_blocksize; int cra_priority; int cra_driver_name; int cra_name; } ;
struct skcipher_alg {int decrypt; int encrypt; int setkey; int exit; int init; int max_keysize; int min_keysize; int chunksize; int ivsize; TYPE_1__ base; } ;
struct simd_skcipher_ctx {int dummy; } ;
struct simd_skcipher_alg {char const* ialg_name; struct skcipher_alg alg; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_INTERNAL ;
 scalar_t__ CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 struct simd_skcipher_alg* ERR_CAST (struct crypto_skcipher*) ;
 struct simd_skcipher_alg* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_alloc_skcipher (char const*,int,int) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 int crypto_register_skcipher (struct skcipher_alg*) ;
 struct skcipher_alg* crypto_skcipher_alg (struct crypto_skcipher*) ;
 int kfree (struct simd_skcipher_alg*) ;
 struct simd_skcipher_alg* kzalloc (int,int ) ;
 int simd_skcipher_decrypt ;
 int simd_skcipher_encrypt ;
 int simd_skcipher_exit ;
 int simd_skcipher_init ;
 int simd_skcipher_setkey ;
 scalar_t__ snprintf (int ,scalar_t__,char*,char const*) ;

struct simd_skcipher_alg *simd_skcipher_create_compat(const char *algname,
            const char *drvname,
            const char *basename)
{
 struct simd_skcipher_alg *salg;
 struct crypto_skcipher *tfm;
 struct skcipher_alg *ialg;
 struct skcipher_alg *alg;
 int err;

 tfm = crypto_alloc_skcipher(basename, CRYPTO_ALG_INTERNAL,
        CRYPTO_ALG_INTERNAL | CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm))
  return ERR_CAST(tfm);

 ialg = crypto_skcipher_alg(tfm);

 salg = kzalloc(sizeof(*salg), GFP_KERNEL);
 if (!salg) {
  salg = ERR_PTR(-ENOMEM);
  goto out_put_tfm;
 }

 salg->ialg_name = basename;
 alg = &salg->alg;

 err = -ENAMETOOLONG;
 if (snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", algname) >=
     CRYPTO_MAX_ALG_NAME)
  goto out_free_salg;

 if (snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
       drvname) >= CRYPTO_MAX_ALG_NAME)
  goto out_free_salg;

 alg->base.cra_flags = CRYPTO_ALG_ASYNC;
 alg->base.cra_priority = ialg->base.cra_priority;
 alg->base.cra_blocksize = ialg->base.cra_blocksize;
 alg->base.cra_alignmask = ialg->base.cra_alignmask;
 alg->base.cra_module = ialg->base.cra_module;
 alg->base.cra_ctxsize = sizeof(struct simd_skcipher_ctx);

 alg->ivsize = ialg->ivsize;
 alg->chunksize = ialg->chunksize;
 alg->min_keysize = ialg->min_keysize;
 alg->max_keysize = ialg->max_keysize;

 alg->init = simd_skcipher_init;
 alg->exit = simd_skcipher_exit;

 alg->setkey = simd_skcipher_setkey;
 alg->encrypt = simd_skcipher_encrypt;
 alg->decrypt = simd_skcipher_decrypt;

 err = crypto_register_skcipher(alg);
 if (err)
  goto out_free_salg;

out_put_tfm:
 crypto_free_skcipher(tfm);
 return salg;

out_free_salg:
 kfree(salg);
 salg = ERR_PTR(err);
 goto out_put_tfm;
}
