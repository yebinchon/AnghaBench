
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;


 int ECC_MAX_DIGITS ;
 int vli_add (int const*,int const*,int const*,unsigned int) ;
 int vli_clear (int const*,unsigned int) ;
 scalar_t__ vli_cmp (int const*,int const*,unsigned int) ;
 int vli_is_zero (int const*,unsigned int) ;
 int vli_set (int const*,int const*,unsigned int) ;
 int vli_sub (int const*,int const*,int const*,unsigned int) ;
 int vli_umult (int const*,int const*,int const,unsigned int) ;

__attribute__((used)) static void vli_mmod_special(u64 *result, const u64 *product,
         const u64 *mod, unsigned int ndigits)
{
 u64 c = -mod[0];
 u64 t[ECC_MAX_DIGITS * 2];
 u64 r[ECC_MAX_DIGITS * 2];

 vli_set(r, product, ndigits * 2);
 while (!vli_is_zero(r + ndigits, ndigits)) {
  vli_umult(t, r + ndigits, c, ndigits);
  vli_clear(r + ndigits, ndigits);
  vli_add(r, r, t, ndigits * 2);
 }
 vli_set(t, mod, ndigits);
 vli_clear(t + ndigits, ndigits);
 while (vli_cmp(r, t, ndigits * 2) >= 0)
  vli_sub(r, r, t, ndigits * 2);
 vli_set(result, r, ndigits);
}
