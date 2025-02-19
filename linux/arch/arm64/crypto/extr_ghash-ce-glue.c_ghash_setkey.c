
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_key {int dummy; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 unsigned int GHASH_BLOCK_SIZE ;
 int __ghash_setkey (struct ghash_key*,int const*,unsigned int) ;
 struct ghash_key* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;

__attribute__((used)) static int ghash_setkey(struct crypto_shash *tfm,
   const u8 *inkey, unsigned int keylen)
{
 struct ghash_key *key = crypto_shash_ctx(tfm);

 if (keylen != GHASH_BLOCK_SIZE) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 return __ghash_setkey(key, inkey, keylen);
}
