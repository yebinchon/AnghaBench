
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ECC_MAX_DIGITS ;
 int vli_clear (int*,int) ;
 unsigned int vli_num_bits (int const*,unsigned int) ;
 int vli_rshift1 (int*,unsigned int) ;
 int vli_set (int*,int const*,unsigned int) ;

__attribute__((used)) static void vli_mmod_slow(u64 *result, u64 *product, const u64 *mod,
     unsigned int ndigits)
{
 u64 mod_m[2 * ECC_MAX_DIGITS];
 u64 tmp[2 * ECC_MAX_DIGITS];
 u64 *v[2] = { tmp, product };
 u64 carry = 0;
 unsigned int i;

 int shift = (ndigits * 2 * 64) - vli_num_bits(mod, ndigits);
 int word_shift = shift / 64;
 int bit_shift = shift % 64;

 vli_clear(mod_m, word_shift);
 if (bit_shift > 0) {
  for (i = 0; i < ndigits; ++i) {
   mod_m[word_shift + i] = (mod[i] << bit_shift) | carry;
   carry = mod[i] >> (64 - bit_shift);
  }
 } else
  vli_set(mod_m + word_shift, mod, ndigits);

 for (i = 1; shift >= 0; --shift) {
  u64 borrow = 0;
  unsigned int j;

  for (j = 0; j < ndigits * 2; ++j) {
   u64 diff = v[i][j] - mod_m[j] - borrow;

   if (diff != v[i][j])
    borrow = (diff > v[i][j]);
   v[1 - i][j] = diff;
  }
  i = !(i ^ borrow);
  vli_rshift1(mod_m, ndigits);
  mod_m[ndigits - 1] |= mod_m[ndigits] << (64 - 1);
  vli_rshift1(mod_m + ndigits, ndigits);
 }
 vli_set(result, v[i], ndigits);
}
