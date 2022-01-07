
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ppc_aes_ctx {int rounds; int key_enc; int key_dec; } ;
struct crypto_tfm {int crt_flags; } ;





 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct ppc_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int ppc_expand_key_128 (int ,int const*) ;
 int ppc_expand_key_192 (int ,int const*) ;
 int ppc_expand_key_256 (int ,int const*) ;
 int ppc_generate_decrypt_key (int ,int ,unsigned int) ;

__attribute__((used)) static int ppc_aes_setkey(struct crypto_tfm *tfm, const u8 *in_key,
  unsigned int key_len)
{
 struct ppc_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 if (key_len != 130 &&
     key_len != 129 &&
     key_len != 128) {
  tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 switch (key_len) {
 case 130:
  ctx->rounds = 4;
  ppc_expand_key_128(ctx->key_enc, in_key);
  break;
 case 129:
  ctx->rounds = 5;
  ppc_expand_key_192(ctx->key_enc, in_key);
  break;
 case 128:
  ctx->rounds = 6;
  ppc_expand_key_256(ctx->key_enc, in_key);
  break;
 }

 ppc_generate_decrypt_key(ctx->key_dec, ctx->key_enc, key_len);

 return 0;
}
