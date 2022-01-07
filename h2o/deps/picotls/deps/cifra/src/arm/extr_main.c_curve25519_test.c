
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int cf_curve25519_mul_base (int*,int*) ;

__attribute__((used)) static void curve25519_test(void)
{
  uint8_t secret[32] = { 1 };
  uint8_t pubkey[32];
  cf_curve25519_mul_base(pubkey, secret);
}
