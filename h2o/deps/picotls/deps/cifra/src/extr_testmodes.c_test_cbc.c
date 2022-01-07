
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_cbc ;
typedef int cf_aes_context ;


 int TEST_CHECK (int) ;
 int cf_aes ;
 int cf_aes_init (int *,void const*,int) ;
 int cf_cbc_decrypt (int *,int *,int *,int) ;
 int cf_cbc_encrypt (int *,void const*,int *,int) ;
 int cf_cbc_init (int *,int *,int *,void const*) ;
 scalar_t__ memcmp (int *,void const*,int) ;

__attribute__((used)) static void test_cbc(void)
{
  uint8_t out[16];

  const void *iv = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f";
  const void *key = "\x2b\x7e\x15\x16\x28\xae\xd2\xa6\xab\xf7\x15\x88\x09\xcf\x4f\x3c";
  const void *inp = "\x6b\xc1\xbe\xe2\x2e\x40\x9f\x96\xe9\x3d\x7e\x11\x73\x93\x17\x2a";
  const void *expect = "\x76\x49\xab\xac\x81\x19\xb2\x46\xce\xe9\x8e\x9b\x12\xe9\x19\x7d";

  cf_aes_context aes;
  cf_aes_init(&aes, key, 16);

  cf_cbc cbc;
  cf_cbc_init(&cbc, &cf_aes, &aes, iv);
  cf_cbc_encrypt(&cbc, inp, out, 1);
  TEST_CHECK(memcmp(out, expect, 16) == 0);

  uint8_t decrypt[16];
  cf_cbc_init(&cbc, &cf_aes, &aes, iv);
  cf_cbc_decrypt(&cbc, out, decrypt, 1);
  TEST_CHECK(memcmp(decrypt, inp, 16) == 0);
}
