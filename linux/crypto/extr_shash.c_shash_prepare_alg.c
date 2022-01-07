
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; int * cra_type; } ;
struct shash_alg {scalar_t__ digestsize; scalar_t__ descsize; scalar_t__ statesize; scalar_t__ setkey; scalar_t__ import; scalar_t__ export; scalar_t__ digest; scalar_t__ finup; struct crypto_alg base; } ;


 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_SHASH ;
 int EINVAL ;
 scalar_t__ HASH_MAX_DESCSIZE ;
 scalar_t__ HASH_MAX_DIGESTSIZE ;
 scalar_t__ HASH_MAX_STATESIZE ;
 int crypto_shash_type ;
 scalar_t__ shash_default_export ;
 scalar_t__ shash_default_import ;
 scalar_t__ shash_digest_unaligned ;
 scalar_t__ shash_finup_unaligned ;
 scalar_t__ shash_no_setkey ;

__attribute__((used)) static int shash_prepare_alg(struct shash_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 if (alg->digestsize > HASH_MAX_DIGESTSIZE ||
     alg->descsize > HASH_MAX_DESCSIZE ||
     alg->statesize > HASH_MAX_STATESIZE)
  return -EINVAL;

 if ((alg->export && !alg->import) || (alg->import && !alg->export))
  return -EINVAL;

 base->cra_type = &crypto_shash_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_SHASH;

 if (!alg->finup)
  alg->finup = shash_finup_unaligned;
 if (!alg->digest)
  alg->digest = shash_digest_unaligned;
 if (!alg->export) {
  alg->export = shash_default_export;
  alg->import = shash_default_import;
  alg->statesize = alg->descsize;
 }
 if (!alg->setkey)
  alg->setkey = shash_no_setkey;

 return 0;
}
