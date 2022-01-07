
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_shash {int dummy; } ;
typedef int __le32 ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int * crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int le32_to_cpup (int *) ;

__attribute__((used)) static int crc32c_sparc64_setkey(struct crypto_shash *hash, const u8 *key,
     unsigned int keylen)
{
 u32 *mctx = crypto_shash_ctx(hash);

 if (keylen != sizeof(u32)) {
  crypto_shash_set_flags(hash, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 *(__le32 *)mctx = le32_to_cpup((__le32 *)key);
 return 0;
}
