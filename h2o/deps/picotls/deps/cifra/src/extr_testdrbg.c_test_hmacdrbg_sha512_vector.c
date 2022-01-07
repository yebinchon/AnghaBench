
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
 int cf_sha512 ;
 scalar_t__ memcmp (int *,int *,int) ;
 int unhex (int *,int,char*) ;

__attribute__((used)) static void test_hmacdrbg_sha512_vector(void)
{
  uint8_t entropy[32], nonce[16], reseed[32], got[256], expect[256];


  unhex(entropy, sizeof entropy, "48c121b18733af15c27e1dd9ba66a9a81a5579cdba0f5b657ec53c2b9e90bbf6");
  unhex(nonce, sizeof nonce, "bbb7c777428068fad9970891f879b1af");
  unhex(reseed, sizeof reseed, "e0ffefdadb9ccf990504d568bdb4d862cbe17ccce6e22dfcab8b4804fd21421a");
  unhex(expect, sizeof expect, "05da6aac7d980da038f65f392841476d37fe70fbd3e369d1f80196e66e54b8fadb1d60e1a0f3d4dc173769d75fc3410549d7a843270a54a068b4fe767d7d9a59604510a875ad1e9731c8afd0fd50b825e2c50d062576175106a9981be37e02ec7c5cd0a69aa0ca65bddaee1b0de532e10cfa1f5bf6a026e47379736a099d6750ab121dbe3622b841baf8bdcbe875c85ba4b586b8b5b57b0fecbec08c12ff2a9453c47c6e32a52103d972c62ab9affb8e728a31fcefbbccc556c0f0a35f4b10ace2d96b906e36cbb72233201e536d3e13b045187b417d2449cad1edd192e061f12d22147b0a176ea8d9c4c35404395b6502ef333a813b6586037479e0fa3c6a23");

  cf_hmac_drbg ctx;
  cf_hmac_drbg_init(&ctx, &cf_sha512, entropy, sizeof entropy, nonce, sizeof nonce, ((void*)0), 0);
  cf_hmac_drbg_reseed(&ctx, reseed, sizeof reseed, ((void*)0), 0);
  cf_hmac_drbg_gen(&ctx, got, sizeof got);
  cf_hmac_drbg_gen(&ctx, got, sizeof got);
  TEST_CHECK(memcmp(got, expect, sizeof got) == 0);
}
