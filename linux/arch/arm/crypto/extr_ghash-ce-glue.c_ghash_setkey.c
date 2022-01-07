
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_key {int h4; int k; int h3; int h2; int h; } ;
struct crypto_shash {int dummy; } ;
typedef int be128 ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 unsigned int GHASH_BLOCK_SIZE ;
 struct ghash_key* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int gf128mul_lle (int *,int *) ;
 int ghash_reflect (int ,int *) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int ghash_setkey(struct crypto_shash *tfm,
   const u8 *inkey, unsigned int keylen)
{
 struct ghash_key *key = crypto_shash_ctx(tfm);
 be128 h;

 if (keylen != GHASH_BLOCK_SIZE) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }


 memcpy(&key->k, inkey, GHASH_BLOCK_SIZE);
 ghash_reflect(key->h, &key->k);

 h = key->k;
 gf128mul_lle(&h, &key->k);
 ghash_reflect(key->h2, &h);

 gf128mul_lle(&h, &key->k);
 ghash_reflect(key->h3, &h);

 gf128mul_lle(&h, &key->k);
 ghash_reflect(key->h4, &h);

 return 0;
}
