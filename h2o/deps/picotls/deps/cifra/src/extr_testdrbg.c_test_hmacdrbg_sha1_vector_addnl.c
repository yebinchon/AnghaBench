
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_hmac_drbg ;


 int TEST_CHECK (int) ;
 int cf_hmac_drbg_gen_additional (int *,int *,int,int *,int) ;
 int cf_hmac_drbg_init (int *,int *,int *,int,int *,int,int *,int ) ;
 int cf_hmac_drbg_reseed (int *,int *,int,int *,int) ;
 int cf_sha1 ;
 scalar_t__ memcmp (int *,int *,int) ;
 int unhex (int *,int,char*) ;

__attribute__((used)) static void test_hmacdrbg_sha1_vector_addnl(void)
{
  uint8_t entropy[16], nonce[8], reseed[16], got[80], expect[80], addnl[16];


  unhex(entropy, sizeof entropy, "7d7052a776fd2fb3d7191f733304ee8b");
  unhex(nonce, sizeof nonce, "be4a0ceedca80207");
  unhex(reseed, sizeof reseed, "49047e879d610955eed916e4060e00c9");
  unhex(expect, sizeof expect, "a736343844fc92511391db0addd9064dbee24c8976aa259a9e3b6368aa6de4c9bf3a0effcda9cb0e9dc33652ab58ecb7650ed80467f76a849fb1cfc1ed0a09f7155086064db324b1e124f3fc9e614fcb");

  cf_hmac_drbg ctx;
  cf_hmac_drbg_init(&ctx, &cf_sha1, entropy, sizeof entropy, nonce, sizeof nonce, ((void*)0), 0);
  unhex(addnl, sizeof addnl, "fd8bb33aab2f6cdfbc541811861d518d");
  cf_hmac_drbg_reseed(&ctx, reseed, sizeof reseed, addnl, sizeof addnl);
  unhex(addnl, sizeof addnl, "99afe347540461ddf6abeb491e0715b4");
  cf_hmac_drbg_gen_additional(&ctx, addnl, sizeof addnl, got, sizeof got);
  unhex(addnl, sizeof addnl, "02f773482dd7ae66f76e381598a64ef0");
  cf_hmac_drbg_gen_additional(&ctx, addnl, sizeof addnl, got, sizeof got);
  TEST_CHECK(memcmp(got, expect, sizeof got) == 0);
}
