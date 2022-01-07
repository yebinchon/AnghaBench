
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_flags; } ;
struct shash_alg {TYPE_1__ base; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_ALG_OPTIONAL_KEY ;
 int CRYPTO_TFM_NEED_KEY ;
 scalar_t__ crypto_shash_alg_has_setkey (struct shash_alg*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;

__attribute__((used)) static void shash_set_needkey(struct crypto_shash *tfm, struct shash_alg *alg)
{
 if (crypto_shash_alg_has_setkey(alg) &&
     !(alg->base.cra_flags & CRYPTO_ALG_OPTIONAL_KEY))
  crypto_shash_set_flags(tfm, CRYPTO_TFM_NEED_KEY);
}
