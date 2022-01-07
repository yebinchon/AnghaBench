
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ECC_MAX_DIGITS ;
 int vli_mmod_slow (int *,int *,int const*,unsigned int) ;
 int vli_mult (int *,int const*,int const*,unsigned int) ;

void vli_mod_mult_slow(u64 *result, const u64 *left, const u64 *right,
         const u64 *mod, unsigned int ndigits)
{
 u64 product[ECC_MAX_DIGITS * 2];

 vli_mult(product, left, right, ndigits);
 vli_mmod_slow(result, product, mod, ndigits);
}
