
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_aes_ctx {int dummy; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_aead {TYPE_1__ base; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int ce_aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 struct crypto_aes_ctx* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static int ccm_setkey(struct crypto_aead *tfm, const u8 *in_key,
        unsigned int key_len)
{
 struct crypto_aes_ctx *ctx = crypto_aead_ctx(tfm);
 int ret;

 ret = ce_aes_expandkey(ctx, in_key, key_len);
 if (!ret)
  return 0;

 tfm->base.crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
 return -EINVAL;
}
