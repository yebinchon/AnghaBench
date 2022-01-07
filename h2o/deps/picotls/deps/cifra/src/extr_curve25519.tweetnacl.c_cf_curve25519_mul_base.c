
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _9 ;
 int cf_curve25519_mul (int *,int const*,int ) ;

void cf_curve25519_mul_base(uint8_t *q, const uint8_t *n)
{
  cf_curve25519_mul(q, n, _9);
}
