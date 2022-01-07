
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ECC_MAX_DIGITS ;
 int vli_mod_mult_fast (int *,int *,int *,int *,unsigned int) ;
 int vli_mod_square_fast (int *,int *,int *,unsigned int) ;
 int vli_mod_sub (int *,int *,int *,int *,unsigned int) ;
 int vli_set (int *,int *,unsigned int) ;

__attribute__((used)) static void xycz_add(u64 *x1, u64 *y1, u64 *x2, u64 *y2, u64 *curve_prime,
       unsigned int ndigits)
{

 u64 t5[ECC_MAX_DIGITS];


 vli_mod_sub(t5, x2, x1, curve_prime, ndigits);

 vli_mod_square_fast(t5, t5, curve_prime, ndigits);

 vli_mod_mult_fast(x1, x1, t5, curve_prime, ndigits);

 vli_mod_mult_fast(x2, x2, t5, curve_prime, ndigits);

 vli_mod_sub(y2, y2, y1, curve_prime, ndigits);

 vli_mod_square_fast(t5, y2, curve_prime, ndigits);


 vli_mod_sub(t5, t5, x1, curve_prime, ndigits);

 vli_mod_sub(t5, t5, x2, curve_prime, ndigits);

 vli_mod_sub(x2, x2, x1, curve_prime, ndigits);

 vli_mod_mult_fast(y1, y1, x2, curve_prime, ndigits);

 vli_mod_sub(x2, x1, t5, curve_prime, ndigits);

 vli_mod_mult_fast(y2, y2, x2, curve_prime, ndigits);

 vli_mod_sub(y2, y2, y1, curve_prime, ndigits);

 vli_set(x2, t5, ndigits);
}
