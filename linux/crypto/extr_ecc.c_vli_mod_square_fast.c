
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ECC_MAX_DIGITS ;
 int vli_mmod_fast (int *,int *,int const*,unsigned int) ;
 int vli_square (int *,int const*,unsigned int) ;

__attribute__((used)) static void vli_mod_square_fast(u64 *result, const u64 *left,
    const u64 *curve_prime, unsigned int ndigits)
{
 u64 product[2 * ECC_MAX_DIGITS];

 vli_square(product, left, ndigits);
 vli_mmod_fast(result, product, curve_prime, ndigits);
}
