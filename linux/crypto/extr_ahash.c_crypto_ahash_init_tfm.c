
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_ahash {scalar_t__ setkey; int import; int export; int digest; int finup; int final; int update; int init; } ;
struct ahash_alg {scalar_t__ setkey; int import; int export; int digest; scalar_t__ finup; int final; int update; int init; } ;
struct TYPE_2__ {int * cra_type; } ;


 struct crypto_ahash* __crypto_ahash_cast (struct crypto_tfm*) ;
 int ahash_def_finup ;
 scalar_t__ ahash_nosetkey ;
 int ahash_set_needkey (struct crypto_ahash*) ;
 struct ahash_alg* crypto_ahash_alg (struct crypto_ahash*) ;
 int crypto_ahash_type ;
 int crypto_init_shash_ops_async (struct crypto_tfm*) ;

__attribute__((used)) static int crypto_ahash_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_ahash *hash = __crypto_ahash_cast(tfm);
 struct ahash_alg *alg = crypto_ahash_alg(hash);

 hash->setkey = ahash_nosetkey;

 if (tfm->__crt_alg->cra_type != &crypto_ahash_type)
  return crypto_init_shash_ops_async(tfm);

 hash->init = alg->init;
 hash->update = alg->update;
 hash->final = alg->final;
 hash->finup = alg->finup ?: ahash_def_finup;
 hash->digest = alg->digest;
 hash->export = alg->export;
 hash->import = alg->import;

 if (alg->setkey) {
  hash->setkey = alg->setkey;
  ahash_set_needkey(hash);
 }

 return 0;
}
