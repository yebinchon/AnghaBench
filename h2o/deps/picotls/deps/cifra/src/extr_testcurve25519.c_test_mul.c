
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TEST_CHECK (int) ;
 int cf_curve25519_mul (int *,int *,int *) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int unhex (int *,int,char*) ;

__attribute__((used)) static void test_mul(void)
{
  uint8_t scalar[32];
  uint8_t public[32];
  uint8_t shared[32];
  uint8_t expect[32];

  unhex(scalar, 32, "77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a");
  unhex(public, 32, "de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f");
  unhex(expect, 32, "4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742");
  cf_curve25519_mul(shared, scalar, public);
  TEST_CHECK(memcmp(expect, shared, 32) == 0);
}
