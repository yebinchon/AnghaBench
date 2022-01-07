
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct crypto_sparc64_aes_ctx {int expanded_key_length; unsigned int key_length; int * key; int * ops; } ;





 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int aes128_ops ;
 int aes192_ops ;
 int aes256_ops ;
 int aes_sparc64_key_expand (int const*,int *,unsigned int) ;
 struct crypto_sparc64_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int aes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
         unsigned int key_len)
{
 struct crypto_sparc64_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;

 switch (key_len) {
 case 130:
  ctx->expanded_key_length = 0xb0;
  ctx->ops = &aes128_ops;
  break;

 case 129:
  ctx->expanded_key_length = 0xd0;
  ctx->ops = &aes192_ops;
  break;

 case 128:
  ctx->expanded_key_length = 0xf0;
  ctx->ops = &aes256_ops;
  break;

 default:
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 aes_sparc64_key_expand((const u32 *)in_key, &ctx->key[0], key_len);
 ctx->key_length = key_len;

 return 0;
}
