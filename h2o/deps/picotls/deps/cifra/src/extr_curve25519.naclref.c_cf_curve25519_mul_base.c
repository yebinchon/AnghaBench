
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int cf_curve25519_mul (int*,int const*,int*) ;

void cf_curve25519_mul_base(uint8_t out[32], const uint8_t scalar[32])
{
  uint8_t base_point[32] = { 9 };
  cf_curve25519_mul(out, scalar, base_point);
}
