
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_xts_ctx {int fallback; } ;
struct crypto_tfm {int crt_flags; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_sync_skcipher_clear_flags (int ,int) ;
 int crypto_sync_skcipher_get_flags (int ) ;
 int crypto_sync_skcipher_set_flags (int ,int) ;
 unsigned int crypto_sync_skcipher_setkey (int ,int const*,unsigned int) ;
 struct s390_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int xts_fallback_setkey(struct crypto_tfm *tfm, const u8 *key,
       unsigned int len)
{
 struct s390_xts_ctx *xts_ctx = crypto_tfm_ctx(tfm);
 unsigned int ret;

 crypto_sync_skcipher_clear_flags(xts_ctx->fallback,
      CRYPTO_TFM_REQ_MASK);
 crypto_sync_skcipher_set_flags(xts_ctx->fallback, tfm->crt_flags &
           CRYPTO_TFM_REQ_MASK);

 ret = crypto_sync_skcipher_setkey(xts_ctx->fallback, key, len);

 tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
 tfm->crt_flags |= crypto_sync_skcipher_get_flags(xts_ctx->fallback) &
     CRYPTO_TFM_RES_MASK;

 return ret;
}
