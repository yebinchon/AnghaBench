
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ECC_MAX_DIGITS ;
 int vli_mod_mult_fast (int *,int *,int *,int *,unsigned int) ;
 int vli_mod_square_fast (int *,int *,int *,unsigned int) ;

__attribute__((used)) static void apply_z(u64 *x1, u64 *y1, u64 *z, u64 *curve_prime,
      unsigned int ndigits)
{
 u64 t1[ECC_MAX_DIGITS];

 vli_mod_square_fast(t1, z, curve_prime, ndigits);
 vli_mod_mult_fast(x1, x1, t1, curve_prime, ndigits);
 vli_mod_mult_fast(t1, t1, z, curve_prime, ndigits);
 vli_mod_mult_fast(y1, y1, t1, curve_prime, ndigits);
}
