
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;


 int cf_curve25519_mul (int *,int const*,int*) ;

void cf_curve25519_mul_base(u8 out[32], const u8 scalar[32])
{
  uint8_t base[32] = { 9 };
  cf_curve25519_mul(out, scalar, base);
}
