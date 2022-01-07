
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ vli_add (scalar_t__*,scalar_t__ const*,scalar_t__ const*,unsigned int) ;
 scalar_t__ vli_cmp (scalar_t__*,scalar_t__ const*,unsigned int) ;
 int vli_sub (scalar_t__*,scalar_t__*,scalar_t__ const*,unsigned int) ;

__attribute__((used)) static void vli_mod_add(u64 *result, const u64 *left, const u64 *right,
   const u64 *mod, unsigned int ndigits)
{
 u64 carry;

 carry = vli_add(result, left, right, ndigits);




 if (carry || vli_cmp(result, mod, ndigits) >= 0)
  vli_sub(result, result, mod, ndigits);
}
