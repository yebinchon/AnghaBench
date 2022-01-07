
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_authenc_keys {int enckeylen; int enckey; int authkeylen; int authkey; } ;
struct crypto_authenc_ctx {struct crypto_skcipher* enc; struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int) ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int) ;
 int crypto_ahash_setkey (struct crypto_ahash*,int ,int ) ;
 scalar_t__ crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int crypto_skcipher_clear_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int ,int ) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;

__attribute__((used)) static int crypto_authenc_setkey(struct crypto_aead *authenc, const u8 *key,
     unsigned int keylen)
{
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct crypto_ahash *auth = ctx->auth;
 struct crypto_skcipher *enc = ctx->enc;
 struct crypto_authenc_keys keys;
 int err = -EINVAL;

 if (crypto_authenc_extractkeys(&keys, key, keylen) != 0)
  goto badkey;

 crypto_ahash_clear_flags(auth, CRYPTO_TFM_REQ_MASK);
 crypto_ahash_set_flags(auth, crypto_aead_get_flags(authenc) &
        CRYPTO_TFM_REQ_MASK);
 err = crypto_ahash_setkey(auth, keys.authkey, keys.authkeylen);
 crypto_aead_set_flags(authenc, crypto_ahash_get_flags(auth) &
           CRYPTO_TFM_RES_MASK);

 if (err)
  goto out;

 crypto_skcipher_clear_flags(enc, CRYPTO_TFM_REQ_MASK);
 crypto_skcipher_set_flags(enc, crypto_aead_get_flags(authenc) &
           CRYPTO_TFM_REQ_MASK);
 err = crypto_skcipher_setkey(enc, keys.enckey, keys.enckeylen);
 crypto_aead_set_flags(authenc, crypto_skcipher_get_flags(enc) &
           CRYPTO_TFM_RES_MASK);

out:
 memzero_explicit(&keys, sizeof(keys));
 return err;

badkey:
 crypto_aead_set_flags(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
 goto out;
}
