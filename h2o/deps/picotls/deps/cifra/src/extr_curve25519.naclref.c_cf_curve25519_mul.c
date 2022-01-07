
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int crypto_scalarmult (int *,int const*,int const*) ;

void cf_curve25519_mul(uint8_t out[32], const uint8_t scalar[32], const uint8_t point[32])
{
  crypto_scalarmult(out, scalar, point);
}
