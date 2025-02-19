
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
 int cf_ccm_decrypt (int *,int *,void const*,size_t,int,void const*,size_t,void const*,size_t,int*,size_t,int*) ;
 int cf_ccm_encrypt (int *,int *,void const*,size_t,int,void const*,size_t,void const*,size_t,int*,int*,size_t) ;
 scalar_t__ memcmp (int*,void const*,size_t) ;

__attribute__((used)) static void check_ccm(const void *key, size_t nkey,
                      const void *header, size_t nheader,
                      const void *plain, size_t nplain,
                      const void *nonce, size_t nnonce,
                      const void *expect_cipher, size_t ncipher,
                      const void *expect_tag, size_t ntag)
{
  uint8_t cipher[32], tag[16], decrypted[32];

  assert(ncipher == nplain);

  cf_aes_context ctx;
  cf_aes_init(&ctx, key, nkey);

  cf_ccm_encrypt(&cf_aes, &ctx,
                 plain, nplain, 15 - nnonce,
                 header, nheader,
                 nonce, nnonce,
                 cipher,
                 tag, ntag);

  TEST_CHECK(memcmp(tag, expect_tag, ntag) == 0);
  TEST_CHECK(memcmp(cipher, expect_cipher, ncipher) == 0);

  int err;
  err = cf_ccm_decrypt(&cf_aes, &ctx,
                       expect_cipher, ncipher, 15 - nnonce,
                       header, nheader,
                       nonce, nnonce,
                       tag, ntag,
                       decrypted);
  TEST_CHECK(err == 0);
  TEST_CHECK(memcmp(decrypted, plain, nplain) == 0);

  tag[0] ^= 0xff;

  err = cf_ccm_decrypt(&cf_aes, &ctx,
                       expect_cipher, ncipher, 15 - nnonce,
                       header, nheader,
                       nonce, nnonce,
                       tag, ntag,
                       decrypted);
  TEST_CHECK(err == 1);
}
