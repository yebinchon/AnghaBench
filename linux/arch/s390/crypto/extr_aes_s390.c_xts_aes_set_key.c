
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_xts_ctx {unsigned long fc; unsigned int key_len; int pcc_key; int key; } ;
struct crypto_tfm {int crt_flags; } ;


 unsigned long CPACF_KM_XTS_128 ;
 unsigned long CPACF_KM_XTS_256 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 scalar_t__ cpacf_test_func (int *,unsigned long) ;
 struct s390_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 scalar_t__ fips_enabled ;
 int km_functions ;
 int memcpy (int ,int const*,unsigned int) ;
 int xts_fallback_setkey (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int xts_aes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
      unsigned int key_len)
{
 struct s390_xts_ctx *xts_ctx = crypto_tfm_ctx(tfm);
 unsigned long fc;
 int err;

 err = xts_fallback_setkey(tfm, in_key, key_len);
 if (err)
  return err;


 if (fips_enabled && key_len != 32 && key_len != 64) {
  tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }


 fc = (key_len == 32) ? CPACF_KM_XTS_128 :
      (key_len == 64) ? CPACF_KM_XTS_256 : 0;


 xts_ctx->fc = (fc && cpacf_test_func(&km_functions, fc)) ? fc : 0;
 if (!xts_ctx->fc)
  return 0;


 key_len = key_len / 2;
 xts_ctx->key_len = key_len;
 memcpy(xts_ctx->key, in_key, key_len);
 memcpy(xts_ctx->pcc_key, in_key + key_len, key_len);
 return 0;
}
