
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct crypto_aes_ctx {int dummy; } ;
typedef int ctx ;
typedef int __le32 ;


 int aes_encrypt (struct crypto_aes_ctx*,int *,int *) ;
 int aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 int crypto4xx_memcpy_to_le32 (int *,int *,int) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int crypto4xx_compute_gcm_hash_key_sw(__le32 *hash_start, const u8 *key,
          unsigned int keylen)
{
 struct crypto_aes_ctx ctx;
 uint8_t src[16] = { 0 };
 int rc;

 rc = aes_expandkey(&ctx, key, keylen);
 if (rc) {
  pr_err("aes_expandkey() failed: %d\n", rc);
  return rc;
 }

 aes_encrypt(&ctx, src, src);
 crypto4xx_memcpy_to_le32(hash_start, src, 16);
 memzero_explicit(&ctx, sizeof(ctx));
 return 0;
}
