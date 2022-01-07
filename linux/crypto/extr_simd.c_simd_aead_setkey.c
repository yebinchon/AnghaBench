
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct simd_aead_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct crypto_aead base; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_aead_clear_flags (struct crypto_aead*,int) ;
 struct simd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_aead_setkey (struct crypto_aead*,int const*,unsigned int) ;

__attribute__((used)) static int simd_aead_setkey(struct crypto_aead *tfm, const u8 *key,
    unsigned int key_len)
{
 struct simd_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct crypto_aead *child = &ctx->cryptd_tfm->base;
 int err;

 crypto_aead_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_aead_set_flags(child, crypto_aead_get_flags(tfm) &
         CRYPTO_TFM_REQ_MASK);
 err = crypto_aead_setkey(child, key, key_len);
 crypto_aead_set_flags(tfm, crypto_aead_get_flags(child) &
       CRYPTO_TFM_RES_MASK);
 return err;
}
