
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



int vli_cmp(const u64 *left, const u64 *right, unsigned int ndigits)
{
 int i;

 for (i = ndigits - 1; i >= 0; i--) {
  if (left[i] > right[i])
   return 1;
  else if (left[i] < right[i])
   return -1;
 }

 return 0;
}
