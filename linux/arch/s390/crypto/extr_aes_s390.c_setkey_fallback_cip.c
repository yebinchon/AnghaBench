
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_3__* cip; } ;
struct s390_aes_ctx {TYPE_2__ fallback; } ;
struct crypto_tfm {int crt_flags; } ;
struct TYPE_4__ {int crt_flags; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_cipher_setkey (TYPE_3__*,int const*,unsigned int) ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int setkey_fallback_cip(struct crypto_tfm *tfm, const u8 *in_key,
  unsigned int key_len)
{
 struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);
 int ret;

 sctx->fallback.cip->base.crt_flags &= ~CRYPTO_TFM_REQ_MASK;
 sctx->fallback.cip->base.crt_flags |= (tfm->crt_flags &
   CRYPTO_TFM_REQ_MASK);

 ret = crypto_cipher_setkey(sctx->fallback.cip, in_key, key_len);
 if (ret) {
  tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
  tfm->crt_flags |= (sctx->fallback.cip->base.crt_flags &
    CRYPTO_TFM_RES_MASK);
 }
 return ret;
}
