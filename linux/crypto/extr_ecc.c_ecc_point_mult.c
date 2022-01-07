
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;
struct ecc_point {int const* y; int const* x; int ndigits; } ;
struct ecc_curve {int n; int const* p; } ;


 int ECC_MAX_DIGITS ;
 int apply_z (int const*,int const*,int const*,int const*,unsigned int) ;
 int vli_add (int const*,int const*,int ,unsigned int) ;
 int vli_mod_inv (int const*,int const*,int const*,int ) ;
 int vli_mod_mult_fast (int const*,int const*,int const*,int const*,unsigned int) ;
 int vli_mod_sub (int const*,int const*,int const*,int const*,unsigned int) ;
 int vli_set (int const*,int const*,unsigned int) ;
 int vli_test_bit (int const*,int) ;
 int xycz_add (int const*,int const*,int const*,int const*,int const*,unsigned int) ;
 int xycz_add_c (int const*,int const*,int const*,int const*,int const*,unsigned int) ;
 int xycz_initial_double (int const*,int const*,int const*,int const*,int const*,int const*,unsigned int) ;

__attribute__((used)) static void ecc_point_mult(struct ecc_point *result,
      const struct ecc_point *point, const u64 *scalar,
      u64 *initial_z, const struct ecc_curve *curve,
      unsigned int ndigits)
{

 u64 rx[2][ECC_MAX_DIGITS];
 u64 ry[2][ECC_MAX_DIGITS];
 u64 z[ECC_MAX_DIGITS];
 u64 sk[2][ECC_MAX_DIGITS];
 u64 *curve_prime = curve->p;
 int i, nb;
 int num_bits;
 int carry;

 carry = vli_add(sk[0], scalar, curve->n, ndigits);
 vli_add(sk[1], sk[0], curve->n, ndigits);
 scalar = sk[!carry];
 num_bits = sizeof(u64) * ndigits * 8 + 1;

 vli_set(rx[1], point->x, ndigits);
 vli_set(ry[1], point->y, ndigits);

 xycz_initial_double(rx[1], ry[1], rx[0], ry[0], initial_z, curve_prime,
       ndigits);

 for (i = num_bits - 2; i > 0; i--) {
  nb = !vli_test_bit(scalar, i);
  xycz_add_c(rx[1 - nb], ry[1 - nb], rx[nb], ry[nb], curve_prime,
      ndigits);
  xycz_add(rx[nb], ry[nb], rx[1 - nb], ry[1 - nb], curve_prime,
    ndigits);
 }

 nb = !vli_test_bit(scalar, 0);
 xycz_add_c(rx[1 - nb], ry[1 - nb], rx[nb], ry[nb], curve_prime,
     ndigits);



 vli_mod_sub(z, rx[1], rx[0], curve_prime, ndigits);

 vli_mod_mult_fast(z, z, ry[1 - nb], curve_prime, ndigits);

 vli_mod_mult_fast(z, z, point->x, curve_prime, ndigits);


 vli_mod_inv(z, z, curve_prime, point->ndigits);


 vli_mod_mult_fast(z, z, point->y, curve_prime, ndigits);

 vli_mod_mult_fast(z, z, rx[1 - nb], curve_prime, ndigits);


 xycz_add(rx[nb], ry[nb], rx[1 - nb], ry[1 - nb], curve_prime, ndigits);

 apply_z(rx[0], ry[0], z, curve_prime, ndigits);

 vli_set(result->x, rx[0], ndigits);
 vli_set(result->y, ry[0], ndigits);
}
