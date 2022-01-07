
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct chksum_ctx {int key; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct chksum_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int get_unaligned_le32 (int const*) ;

__attribute__((used)) static int chksum_setkey(struct crypto_shash *tfm, const u8 *key,
    unsigned int keylen)
{
 struct chksum_ctx *mctx = crypto_shash_ctx(tfm);

 if (keylen != sizeof(mctx->key)) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 mctx->key = get_unaligned_le32(key);
 return 0;
}
