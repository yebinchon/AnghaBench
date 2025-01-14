
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_ctx {struct crypto_sync_skcipher* child; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 struct cryptd_skcipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 int crypto_sync_skcipher_clear_flags (struct crypto_sync_skcipher*,int) ;
 int crypto_sync_skcipher_get_flags (struct crypto_sync_skcipher*) ;
 int crypto_sync_skcipher_set_flags (struct crypto_sync_skcipher*,int) ;
 int crypto_sync_skcipher_setkey (struct crypto_sync_skcipher*,int const*,unsigned int) ;

__attribute__((used)) static int cryptd_skcipher_setkey(struct crypto_skcipher *parent,
      const u8 *key, unsigned int keylen)
{
 struct cryptd_skcipher_ctx *ctx = crypto_skcipher_ctx(parent);
 struct crypto_sync_skcipher *child = ctx->child;
 int err;

 crypto_sync_skcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_sync_skcipher_set_flags(child,
           crypto_skcipher_get_flags(parent) &
      CRYPTO_TFM_REQ_MASK);
 err = crypto_sync_skcipher_setkey(child, key, keylen);
 crypto_skcipher_set_flags(parent,
      crypto_sync_skcipher_get_flags(child) &
       CRYPTO_TFM_RES_MASK);
 return err;
}
