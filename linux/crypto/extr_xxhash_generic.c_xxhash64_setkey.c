
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xxhash64_tfm_ctx {int seed; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct xxhash64_tfm_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int get_unaligned_le64 (int const*) ;

__attribute__((used)) static int xxhash64_setkey(struct crypto_shash *tfm, const u8 *key,
    unsigned int keylen)
{
 struct xxhash64_tfm_ctx *tctx = crypto_shash_ctx(tfm);

 if (keylen != sizeof(tctx->seed)) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 tctx->seed = get_unaligned_le64(key);
 return 0;
}
