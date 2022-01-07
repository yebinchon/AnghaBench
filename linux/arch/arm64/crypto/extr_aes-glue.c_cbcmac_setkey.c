
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_tfm_ctx {int key; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int aes_expandkey (int *,int const*,unsigned int) ;
 struct mac_tfm_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;

__attribute__((used)) static int cbcmac_setkey(struct crypto_shash *tfm, const u8 *in_key,
    unsigned int key_len)
{
 struct mac_tfm_ctx *ctx = crypto_shash_ctx(tfm);
 int err;

 err = aes_expandkey(&ctx->key, in_key, key_len);
 if (err)
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);

 return err;
}
