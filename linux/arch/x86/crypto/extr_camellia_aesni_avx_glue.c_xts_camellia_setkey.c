
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_skcipher {TYPE_1__ base; } ;
struct camellia_xts_ctx {int tweak_ctx; int crypt_ctx; } ;


 int __camellia_setkey (int *,int const*,unsigned int,int *) ;
 struct camellia_xts_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int xts_verify_key (struct crypto_skcipher*,int const*,unsigned int) ;

int xts_camellia_setkey(struct crypto_skcipher *tfm, const u8 *key,
   unsigned int keylen)
{
 struct camellia_xts_ctx *ctx = crypto_skcipher_ctx(tfm);
 u32 *flags = &tfm->base.crt_flags;
 int err;

 err = xts_verify_key(tfm, key, keylen);
 if (err)
  return err;


 err = __camellia_setkey(&ctx->crypt_ctx, key, keylen / 2, flags);
 if (err)
  return err;


 return __camellia_setkey(&ctx->tweak_ctx, key + keylen / 2, keylen / 2,
    flags);
}
