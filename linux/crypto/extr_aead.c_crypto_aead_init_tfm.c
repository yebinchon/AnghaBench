
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int exit; } ;
struct crypto_aead {TYPE_1__ base; int authsize; } ;
struct aead_alg {int (* init ) (struct crypto_aead*) ;scalar_t__ exit; int maxauthsize; } ;


 int CRYPTO_TFM_NEED_KEY ;
 struct crypto_aead* __crypto_aead_cast (struct crypto_tfm*) ;
 struct aead_alg* crypto_aead_alg (struct crypto_aead*) ;
 int crypto_aead_exit_tfm ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int stub1 (struct crypto_aead*) ;

__attribute__((used)) static int crypto_aead_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_aead *aead = __crypto_aead_cast(tfm);
 struct aead_alg *alg = crypto_aead_alg(aead);

 crypto_aead_set_flags(aead, CRYPTO_TFM_NEED_KEY);

 aead->authsize = alg->maxauthsize;

 if (alg->exit)
  aead->base.exit = crypto_aead_exit_tfm;

 if (alg->init)
  return alg->init(aead);

 return 0;
}
