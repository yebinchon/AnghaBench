
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int* expkey; } ;
struct TYPE_4__ {int* expkey; } ;
struct des3_ede_x86_ctx {TYPE_1__ dec; TYPE_2__ enc; } ;
struct crypto_tfm {int dummy; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int DES3_EDE_EXPKEY_WORDS ;
 int EINVAL ;
 int ENOKEY ;
 struct des3_ede_x86_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int crypto_tfm_get_flags (struct crypto_tfm*) ;
 int des3_ede_expand_key (TYPE_2__*,int const*,unsigned int) ;
 int memset (struct des3_ede_x86_ctx*,int ,int) ;
 int ror32 (int,int) ;

__attribute__((used)) static int des3_ede_x86_setkey(struct crypto_tfm *tfm, const u8 *key,
          unsigned int keylen)
{
 struct des3_ede_x86_ctx *ctx = crypto_tfm_ctx(tfm);
 u32 i, j, tmp;
 int err;

 err = des3_ede_expand_key(&ctx->enc, key, keylen);
 if (err == -ENOKEY) {
  if (crypto_tfm_get_flags(tfm) & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS)
   err = -EINVAL;
  else
   err = 0;
 }

 if (err) {
  memset(ctx, 0, sizeof(*ctx));
  return err;
 }



 j = DES3_EDE_EXPKEY_WORDS - 2;
 for (i = 0; i < DES3_EDE_EXPKEY_WORDS; i += 2, j -= 2) {
  tmp = ror32(ctx->enc.expkey[i + 1], 4);
  ctx->enc.expkey[i + 1] = tmp;

  ctx->dec.expkey[j + 0] = ctx->enc.expkey[i + 0];
  ctx->dec.expkey[j + 1] = tmp;
 }

 return 0;
}
