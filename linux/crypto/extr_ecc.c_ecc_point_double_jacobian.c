
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ECC_MAX_DIGITS ;
 int vli_add (int*,int*,int*,unsigned int) ;
 scalar_t__ vli_is_zero (int*,unsigned int) ;
 int vli_mod_add (int*,int*,int*,int*,unsigned int) ;
 int vli_mod_mult_fast (int*,int*,int*,int*,unsigned int) ;
 int vli_mod_square_fast (int*,int*,int*,unsigned int) ;
 int vli_mod_sub (int*,int*,int*,int*,unsigned int) ;
 int vli_rshift1 (int*,unsigned int) ;
 int vli_set (int*,int*,unsigned int) ;
 scalar_t__ vli_test_bit (int*,int ) ;

__attribute__((used)) static void ecc_point_double_jacobian(u64 *x1, u64 *y1, u64 *z1,
          u64 *curve_prime, unsigned int ndigits)
{

 u64 t4[ECC_MAX_DIGITS];
 u64 t5[ECC_MAX_DIGITS];

 if (vli_is_zero(z1, ndigits))
  return;


 vli_mod_square_fast(t4, y1, curve_prime, ndigits);

 vli_mod_mult_fast(t5, x1, t4, curve_prime, ndigits);

 vli_mod_square_fast(t4, t4, curve_prime, ndigits);

 vli_mod_mult_fast(y1, y1, z1, curve_prime, ndigits);

 vli_mod_square_fast(z1, z1, curve_prime, ndigits);


 vli_mod_add(x1, x1, z1, curve_prime, ndigits);

 vli_mod_add(z1, z1, z1, curve_prime, ndigits);

 vli_mod_sub(z1, x1, z1, curve_prime, ndigits);

 vli_mod_mult_fast(x1, x1, z1, curve_prime, ndigits);


 vli_mod_add(z1, x1, x1, curve_prime, ndigits);

 vli_mod_add(x1, x1, z1, curve_prime, ndigits);
 if (vli_test_bit(x1, 0)) {
  u64 carry = vli_add(x1, x1, curve_prime, ndigits);

  vli_rshift1(x1, ndigits);
  x1[ndigits - 1] |= carry << 63;
 } else {
  vli_rshift1(x1, ndigits);
 }



 vli_mod_square_fast(z1, x1, curve_prime, ndigits);

 vli_mod_sub(z1, z1, t5, curve_prime, ndigits);

 vli_mod_sub(z1, z1, t5, curve_prime, ndigits);

 vli_mod_sub(t5, t5, z1, curve_prime, ndigits);

 vli_mod_mult_fast(x1, x1, t5, curve_prime, ndigits);

 vli_mod_sub(t4, x1, t4, curve_prime, ndigits);

 vli_set(x1, z1, ndigits);
 vli_set(z1, y1, ndigits);
 vli_set(y1, t4, ndigits);
}
