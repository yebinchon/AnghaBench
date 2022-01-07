
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int exit; } ;
struct crypto_akcipher {TYPE_1__ base; } ;
struct akcipher_alg {int (* init ) (struct crypto_akcipher*) ;scalar_t__ exit; } ;


 struct crypto_akcipher* __crypto_akcipher_tfm (struct crypto_tfm*) ;
 struct akcipher_alg* crypto_akcipher_alg (struct crypto_akcipher*) ;
 int crypto_akcipher_exit_tfm ;
 int stub1 (struct crypto_akcipher*) ;

__attribute__((used)) static int crypto_akcipher_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_akcipher *akcipher = __crypto_akcipher_tfm(tfm);
 struct akcipher_alg *alg = crypto_akcipher_alg(akcipher);

 if (alg->exit)
  akcipher->base.exit = crypto_akcipher_exit_tfm;

 if (alg->init)
  return alg->init(akcipher);

 return 0;
}
