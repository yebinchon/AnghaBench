
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_hmac_drbg ;


 int TEST_CHECK (int) ;
 int cf_hmac_drbg_gen (int *,int *,int) ;
 int cf_hmac_drbg_init (int *,int *,int *,int,int *,int,int *,int ) ;
 int cf_hmac_drbg_reseed (int *,int *,int,int *,int ) ;
 int cf_sha1 ;
 scalar_t__ memcmp (int *,int *,int) ;
 int unhex (int *,int,char*) ;

__attribute__((used)) static void test_hmacdrbg_sha1_vector(void)
{
  uint8_t entropy[16], nonce[8], reseed[16], got[80], expect[80];


  unhex(entropy, sizeof entropy, "79349bbf7cdda5799557866621c91383");
  unhex(nonce, sizeof nonce, "1146733abf8c35c8");
  unhex(reseed, sizeof reseed, "c7215b5b96c48e9b338c74e3e99dfedf");
  unhex(expect, sizeof expect, "c6a16ab8d420706f0f34ab7fec5adca9d8ca3a133e159ca6ac43c6f8a2be22834a4c0a0affb10d7194f1c1a5cf7322ec1ae0964ed4bf122746e087fdb5b3e91b3493d5bb98faed49e85f130fc8a459b7");

  cf_hmac_drbg ctx;
  cf_hmac_drbg_init(&ctx, &cf_sha1, entropy, sizeof entropy, nonce, sizeof nonce, ((void*)0), 0);
  cf_hmac_drbg_reseed(&ctx, reseed, sizeof reseed, ((void*)0), 0);
  cf_hmac_drbg_gen(&ctx, got, sizeof got);
  cf_hmac_drbg_gen(&ctx, got, sizeof got);
  TEST_CHECK(memcmp(got, expect, sizeof got) == 0);
}
