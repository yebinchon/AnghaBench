
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int ce_aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 struct crypto_aes_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;

__attribute__((used)) static int ce_aes_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
    unsigned int key_len)
{
 struct crypto_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 int ret;

 ret = ce_aes_expandkey(ctx, in_key, key_len);
 if (!ret)
  return 0;

 crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
