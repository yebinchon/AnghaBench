
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 int EINVAL ;
 int ENOKEY ;
 struct des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int crypto_tfm_get_flags (struct crypto_tfm*) ;
 int crypto_tfm_set_flags (struct crypto_tfm*,int ) ;
 int des_expand_key (struct des_ctx*,int const*,unsigned int) ;
 int memset (struct des_ctx*,int ,int) ;

__attribute__((used)) static int des_setkey(struct crypto_tfm *tfm, const u8 *key,
        unsigned int keylen)
{
 struct des_ctx *dctx = crypto_tfm_ctx(tfm);
 int err;

 err = des_expand_key(dctx, key, keylen);
 if (err == -ENOKEY) {
  if (crypto_tfm_get_flags(tfm) & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS)
   err = -EINVAL;
  else
   err = 0;
 }

 if (err) {
  memset(dctx, 0, sizeof(*dctx));
  crypto_tfm_set_flags(tfm, CRYPTO_TFM_RES_WEAK_KEY);
 }
 return err;
}
