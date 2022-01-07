
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 int ECC_MAX_DIGITS ;
 int pr_err_ratelimited (char*) ;
 int vli_mmod_barrett (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned int) ;
 int vli_mmod_fast_192 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned long long*) ;
 int vli_mmod_fast_256 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned long long*) ;
 int vli_mmod_special (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned int) ;
 int vli_mmod_special2 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned int) ;

__attribute__((used)) static bool vli_mmod_fast(u64 *result, u64 *product,
     const u64 *curve_prime, unsigned int ndigits)
{
 u64 tmp[2 * ECC_MAX_DIGITS];


 if (curve_prime[0] != -1ull) {

  if (curve_prime[ndigits - 1] == -1ull) {
   vli_mmod_special(result, product, curve_prime,
      ndigits);
   return 1;
  } else if (curve_prime[ndigits - 1] == 1ull << 63 &&
      curve_prime[ndigits - 2] == 0) {
   vli_mmod_special2(result, product, curve_prime,
       ndigits);
   return 1;
  }
  vli_mmod_barrett(result, product, curve_prime, ndigits);
  return 1;
 }

 switch (ndigits) {
 case 3:
  vli_mmod_fast_192(result, product, curve_prime, tmp);
  break;
 case 4:
  vli_mmod_fast_256(result, product, curve_prime, tmp);
  break;
 default:
  pr_err_ratelimited("ecc: unsupported digits size!\n");
  return 0;
 }

 return 1;
}
