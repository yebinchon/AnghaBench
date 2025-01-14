
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ vli_add (int*,int*,int const*,unsigned int const) ;
 int vli_cmp (int const*,int*,unsigned int const) ;
 int vli_lshift (int*,int*,int,unsigned int const) ;
 int vli_set (int*,int const*,unsigned int const) ;
 scalar_t__ vli_sub (int*,int*,int const*,unsigned int const) ;

__attribute__((used)) static void vli_mmod_fast_256(u64 *result, const u64 *product,
         const u64 *curve_prime, u64 *tmp)
{
 int carry;
 const unsigned int ndigits = 4;


 vli_set(result, product, ndigits);


 tmp[0] = 0;
 tmp[1] = product[5] & 0xffffffff00000000ull;
 tmp[2] = product[6];
 tmp[3] = product[7];
 carry = vli_lshift(tmp, tmp, 1, ndigits);
 carry += vli_add(result, result, tmp, ndigits);


 tmp[1] = product[6] << 32;
 tmp[2] = (product[6] >> 32) | (product[7] << 32);
 tmp[3] = product[7] >> 32;
 carry += vli_lshift(tmp, tmp, 1, ndigits);
 carry += vli_add(result, result, tmp, ndigits);


 tmp[0] = product[4];
 tmp[1] = product[5] & 0xffffffff;
 tmp[2] = 0;
 tmp[3] = product[7];
 carry += vli_add(result, result, tmp, ndigits);


 tmp[0] = (product[4] >> 32) | (product[5] << 32);
 tmp[1] = (product[5] >> 32) | (product[6] & 0xffffffff00000000ull);
 tmp[2] = product[7];
 tmp[3] = (product[6] >> 32) | (product[4] << 32);
 carry += vli_add(result, result, tmp, ndigits);


 tmp[0] = (product[5] >> 32) | (product[6] << 32);
 tmp[1] = (product[6] >> 32);
 tmp[2] = 0;
 tmp[3] = (product[4] & 0xffffffff) | (product[5] << 32);
 carry -= vli_sub(result, result, tmp, ndigits);


 tmp[0] = product[6];
 tmp[1] = product[7];
 tmp[2] = 0;
 tmp[3] = (product[4] >> 32) | (product[5] & 0xffffffff00000000ull);
 carry -= vli_sub(result, result, tmp, ndigits);


 tmp[0] = (product[6] >> 32) | (product[7] << 32);
 tmp[1] = (product[7] >> 32) | (product[4] << 32);
 tmp[2] = (product[4] >> 32) | (product[5] << 32);
 tmp[3] = (product[6] << 32);
 carry -= vli_sub(result, result, tmp, ndigits);


 tmp[0] = product[7];
 tmp[1] = product[4] & 0xffffffff00000000ull;
 tmp[2] = product[5];
 tmp[3] = product[6] & 0xffffffff00000000ull;
 carry -= vli_sub(result, result, tmp, ndigits);

 if (carry < 0) {
  do {
   carry += vli_add(result, result, curve_prime, ndigits);
  } while (carry < 0);
 } else {
  while (carry || vli_cmp(curve_prime, result, ndigits) != 1)
   carry -= vli_sub(result, result, curve_prime, ndigits);
 }
}
