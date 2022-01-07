
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TEST_CHECK (int) ;
 int cf_curve25519_mul_base (int *,int *) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int unhex (int *,int,char*) ;

__attribute__((used)) static void test_base_mul(void)
{
  uint8_t secret[32];
  uint8_t public[32];
  uint8_t expect[32];

  unhex(secret, 32, "77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a");
  unhex(expect, 32, "8520f0098930a754748b7ddcb43ef75a0dbf3a0d26381af4eba4a98eaa9b4e6a");
  cf_curve25519_mul_base(public, secret);
  TEST_CHECK(memcmp(expect, public, 32) == 0);

  unhex(secret, 32, "5dab087e624a8a4b79e17f8b83800ee66f3bb1292618b6fd1c2f8b27ff88e0eb");
  unhex(expect, 32, "de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f");
  cf_curve25519_mul_base(public, secret);
  TEST_CHECK(memcmp(expect, public, 32) == 0);
}
