
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_aes_ctx {unsigned int key_len; int key; int fc; } ;
struct crypto_aead {int dummy; } ;





 int CPACF_KMA_GCM_AES_128 ;
 int CPACF_KMA_GCM_AES_192 ;
 int CPACF_KMA_GCM_AES_256 ;
 int EINVAL ;
 struct s390_aes_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int gcm_aes_setkey(struct crypto_aead *tfm, const u8 *key,
     unsigned int keylen)
{
 struct s390_aes_ctx *ctx = crypto_aead_ctx(tfm);

 switch (keylen) {
 case 130:
  ctx->fc = CPACF_KMA_GCM_AES_128;
  break;
 case 129:
  ctx->fc = CPACF_KMA_GCM_AES_192;
  break;
 case 128:
  ctx->fc = CPACF_KMA_GCM_AES_256;
  break;
 default:
  return -EINVAL;
 }

 memcpy(ctx->key, key, keylen);
 ctx->key_len = keylen;
 return 0;
}
