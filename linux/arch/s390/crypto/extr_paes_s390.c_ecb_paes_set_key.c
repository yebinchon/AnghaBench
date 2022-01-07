
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_paes_ctx {int kb; } ;
struct crypto_tfm {int crt_flags; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 scalar_t__ __paes_set_key (struct s390_paes_ctx*) ;
 int _copy_key_to_kb (int *,int const*,unsigned int) ;
 int _free_kb_keybuf (int *) ;
 struct s390_paes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int ecb_paes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
       unsigned int key_len)
{
 int rc;
 struct s390_paes_ctx *ctx = crypto_tfm_ctx(tfm);

 _free_kb_keybuf(&ctx->kb);
 rc = _copy_key_to_kb(&ctx->kb, in_key, key_len);
 if (rc)
  return rc;

 if (__paes_set_key(ctx)) {
  tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }
 return 0;
}
