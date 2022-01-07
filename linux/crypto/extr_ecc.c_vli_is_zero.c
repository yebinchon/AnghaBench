
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



bool vli_is_zero(const u64 *vli, unsigned int ndigits)
{
 int i;

 for (i = 0; i < ndigits; i++) {
  if (vli[i])
   return 0;
 }

 return 1;
}
