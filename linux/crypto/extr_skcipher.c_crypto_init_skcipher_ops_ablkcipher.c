
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int exit; struct crypto_alg* __crt_alg; } ;
struct crypto_skcipher {int keysize; scalar_t__ reqsize; int ivsize; int decrypt; int encrypt; int setkey; } ;
struct TYPE_2__ {int max_keysize; } ;
struct crypto_alg {TYPE_1__ cra_ablkcipher; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct crypto_tfm*) ;
 int PTR_ERR (struct crypto_tfm*) ;
 struct crypto_ablkcipher* __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 struct crypto_tfm* __crypto_alloc_tfm (struct crypto_alg*,int ,int ) ;
 struct crypto_skcipher* __crypto_skcipher_cast (struct crypto_tfm*) ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 scalar_t__ crypto_ablkcipher_reqsize (struct crypto_ablkcipher*) ;
 int crypto_exit_skcipher_ops_ablkcipher ;
 int crypto_mod_get (struct crypto_alg*) ;
 int crypto_mod_put (struct crypto_alg*) ;
 struct crypto_ablkcipher** crypto_tfm_ctx (struct crypto_tfm*) ;
 int skcipher_decrypt_ablkcipher ;
 int skcipher_encrypt_ablkcipher ;
 int skcipher_set_needkey (struct crypto_skcipher*) ;
 int skcipher_setkey_ablkcipher ;

__attribute__((used)) static int crypto_init_skcipher_ops_ablkcipher(struct crypto_tfm *tfm)
{
 struct crypto_alg *calg = tfm->__crt_alg;
 struct crypto_skcipher *skcipher = __crypto_skcipher_cast(tfm);
 struct crypto_ablkcipher **ctx = crypto_tfm_ctx(tfm);
 struct crypto_ablkcipher *ablkcipher;
 struct crypto_tfm *abtfm;

 if (!crypto_mod_get(calg))
  return -EAGAIN;

 abtfm = __crypto_alloc_tfm(calg, 0, 0);
 if (IS_ERR(abtfm)) {
  crypto_mod_put(calg);
  return PTR_ERR(abtfm);
 }

 ablkcipher = __crypto_ablkcipher_cast(abtfm);
 *ctx = ablkcipher;
 tfm->exit = crypto_exit_skcipher_ops_ablkcipher;

 skcipher->setkey = skcipher_setkey_ablkcipher;
 skcipher->encrypt = skcipher_encrypt_ablkcipher;
 skcipher->decrypt = skcipher_decrypt_ablkcipher;

 skcipher->ivsize = crypto_ablkcipher_ivsize(ablkcipher);
 skcipher->reqsize = crypto_ablkcipher_reqsize(ablkcipher) +
       sizeof(struct ablkcipher_request);
 skcipher->keysize = calg->cra_ablkcipher.max_keysize;

 skcipher_set_needkey(skcipher);

 return 0;
}
