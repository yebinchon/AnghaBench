
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {struct crypto_skcipher* skcipher; } ;
struct essiv_tfm_ctx {int essiv_cipher; int hash; TYPE_1__ u; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_6__ {int tfm; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int HASH_MAX_DIGESTSIZE ;
 int SHASH_DESC_ON_STACK (TYPE_2__*,int ) ;
 int crypto_cipher_clear_flags (int ,int) ;
 int crypto_cipher_get_flags (int ) ;
 int crypto_cipher_set_flags (int ,int) ;
 int crypto_cipher_setkey (int ,int *,int ) ;
 int crypto_shash_digest (TYPE_2__*,int const*,unsigned int,int *) ;
 int crypto_shash_digestsize (int ) ;
 int crypto_skcipher_clear_flags (struct crypto_skcipher*,int) ;
 struct essiv_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int) ;
 TYPE_2__* desc ;

__attribute__((used)) static int essiv_skcipher_setkey(struct crypto_skcipher *tfm,
     const u8 *key, unsigned int keylen)
{
 struct essiv_tfm_ctx *tctx = crypto_skcipher_ctx(tfm);
 SHASH_DESC_ON_STACK(desc, tctx->hash);
 u8 salt[HASH_MAX_DIGESTSIZE];
 int err;

 crypto_skcipher_clear_flags(tctx->u.skcipher, CRYPTO_TFM_REQ_MASK);
 crypto_skcipher_set_flags(tctx->u.skcipher,
      crypto_skcipher_get_flags(tfm) &
      CRYPTO_TFM_REQ_MASK);
 err = crypto_skcipher_setkey(tctx->u.skcipher, key, keylen);
 crypto_skcipher_set_flags(tfm,
      crypto_skcipher_get_flags(tctx->u.skcipher) &
      CRYPTO_TFM_RES_MASK);
 if (err)
  return err;

 desc->tfm = tctx->hash;
 err = crypto_shash_digest(desc, key, keylen, salt);
 if (err)
  return err;

 crypto_cipher_clear_flags(tctx->essiv_cipher, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(tctx->essiv_cipher,
    crypto_skcipher_get_flags(tfm) &
    CRYPTO_TFM_REQ_MASK);
 err = crypto_cipher_setkey(tctx->essiv_cipher, salt,
       crypto_shash_digestsize(tctx->hash));
 crypto_skcipher_set_flags(tfm,
      crypto_cipher_get_flags(tctx->essiv_cipher) &
      CRYPTO_TFM_RES_MASK);

 return err;
}
