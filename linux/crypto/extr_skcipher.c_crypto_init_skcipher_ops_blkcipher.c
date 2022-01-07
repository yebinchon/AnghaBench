
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int exit; struct crypto_alg* __crt_alg; } ;
struct crypto_skcipher {int keysize; int ivsize; int decrypt; int encrypt; int setkey; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_2__ {int max_keysize; } ;
struct crypto_alg {TYPE_1__ cra_blkcipher; } ;


 int CRYPTO_ALG_TYPE_BLKCIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct crypto_tfm*) ;
 int PTR_ERR (struct crypto_tfm*) ;
 struct crypto_tfm* __crypto_alloc_tfm (struct crypto_alg*,int ,int ) ;
 struct crypto_blkcipher* __crypto_blkcipher_cast (struct crypto_tfm*) ;
 struct crypto_skcipher* __crypto_skcipher_cast (struct crypto_tfm*) ;
 int crypto_blkcipher_ivsize (struct crypto_blkcipher*) ;
 int crypto_exit_skcipher_ops_blkcipher ;
 int crypto_mod_get (struct crypto_alg*) ;
 int crypto_mod_put (struct crypto_alg*) ;
 struct crypto_blkcipher** crypto_tfm_ctx (struct crypto_tfm*) ;
 int skcipher_decrypt_blkcipher ;
 int skcipher_encrypt_blkcipher ;
 int skcipher_set_needkey (struct crypto_skcipher*) ;
 int skcipher_setkey_blkcipher ;

__attribute__((used)) static int crypto_init_skcipher_ops_blkcipher(struct crypto_tfm *tfm)
{
 struct crypto_alg *calg = tfm->__crt_alg;
 struct crypto_skcipher *skcipher = __crypto_skcipher_cast(tfm);
 struct crypto_blkcipher **ctx = crypto_tfm_ctx(tfm);
 struct crypto_blkcipher *blkcipher;
 struct crypto_tfm *btfm;

 if (!crypto_mod_get(calg))
  return -EAGAIN;

 btfm = __crypto_alloc_tfm(calg, CRYPTO_ALG_TYPE_BLKCIPHER,
     CRYPTO_ALG_TYPE_MASK);
 if (IS_ERR(btfm)) {
  crypto_mod_put(calg);
  return PTR_ERR(btfm);
 }

 blkcipher = __crypto_blkcipher_cast(btfm);
 *ctx = blkcipher;
 tfm->exit = crypto_exit_skcipher_ops_blkcipher;

 skcipher->setkey = skcipher_setkey_blkcipher;
 skcipher->encrypt = skcipher_encrypt_blkcipher;
 skcipher->decrypt = skcipher_decrypt_blkcipher;

 skcipher->ivsize = crypto_blkcipher_ivsize(blkcipher);
 skcipher->keysize = calg->cra_blkcipher.max_keysize;

 skcipher_set_needkey(skcipher);

 return 0;
}
