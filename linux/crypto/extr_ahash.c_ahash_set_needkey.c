
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_flags; } ;
struct hash_alg_common {TYPE_1__ base; } ;
struct crypto_ahash {scalar_t__ setkey; } ;


 int CRYPTO_ALG_OPTIONAL_KEY ;
 int CRYPTO_TFM_NEED_KEY ;
 scalar_t__ ahash_nosetkey ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;
 struct hash_alg_common* crypto_hash_alg_common (struct crypto_ahash*) ;

__attribute__((used)) static void ahash_set_needkey(struct crypto_ahash *tfm)
{
 const struct hash_alg_common *alg = crypto_hash_alg_common(tfm);

 if (tfm->setkey != ahash_nosetkey &&
     !(alg->base.cra_flags & CRYPTO_ALG_OPTIONAL_KEY))
  crypto_ahash_set_flags(tfm, CRYPTO_TFM_NEED_KEY);
}
