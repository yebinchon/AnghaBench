
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct serpent_xts_ctx {int tweak_ctx; int crypt_ctx; } ;
struct crypto_skcipher {int dummy; } ;


 int __serpent_setkey (int *,int const*,unsigned int) ;
 struct serpent_xts_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int xts_verify_key (struct crypto_skcipher*,int const*,unsigned int) ;

int xts_serpent_setkey(struct crypto_skcipher *tfm, const u8 *key,
         unsigned int keylen)
{
 struct serpent_xts_ctx *ctx = crypto_skcipher_ctx(tfm);
 int err;

 err = xts_verify_key(tfm, key, keylen);
 if (err)
  return err;


 err = __serpent_setkey(&ctx->crypt_ctx, key, keylen / 2);
 if (err)
  return err;


 return __serpent_setkey(&ctx->tweak_ctx, key + keylen / 2, keylen / 2);
}
