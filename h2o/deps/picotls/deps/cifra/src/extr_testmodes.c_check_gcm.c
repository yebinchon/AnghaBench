
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_aes_context ;


 int TEST_CHECK (int) ;
 int assert (int) ;
 int cf_aes ;
 int cf_aes_init (int *,void const*,size_t) ;
 int cf_gcm_decrypt (int *,int *,int*,size_t,void const*,size_t,void const*,size_t,int*,size_t,int*) ;
 int cf_gcm_encrypt (int *,int *,void const*,size_t,void const*,size_t,void const*,size_t,int*,int*,size_t) ;
 scalar_t__ memcmp (int*,void const*,size_t) ;

__attribute__((used)) static void check_gcm(const void *key, size_t nkey,
                      const void *plain, size_t nplain,
                      const void *aad, size_t naad,
                      const void *iv, size_t niv,
                      const void *cipher_expect, size_t ncipher,
                      const void *tag_expect, size_t ntag)
{
  uint8_t plain_decrypt[64],
          cipher[64],
          tag[16];

  assert(ncipher == nplain);

  cf_aes_context ctx;
  cf_aes_init(&ctx, key, nkey);

  cf_gcm_encrypt(&cf_aes, &ctx,
                 plain, nplain,
                 aad, naad,
                 iv, niv,
                 cipher,
                 tag, ntag);

  TEST_CHECK(memcmp(tag, tag_expect, ntag) == 0);
  TEST_CHECK(memcmp(cipher, cipher_expect, ncipher) == 0);

  int err = cf_gcm_decrypt(&cf_aes, &ctx,
                           cipher, ncipher,
                           aad, naad,
                           iv, niv,
                           tag, ntag,
                           plain_decrypt);
  TEST_CHECK(err == 0);
  TEST_CHECK(memcmp(plain_decrypt, plain, ncipher) == 0);

  tag[0] ^= 0xff;
  err = cf_gcm_decrypt(&cf_aes, &ctx,
                       cipher, ncipher,
                       aad, naad,
                       iv, niv,
                       tag, ntag,
                       plain_decrypt);
  TEST_CHECK(err == 1);
}
