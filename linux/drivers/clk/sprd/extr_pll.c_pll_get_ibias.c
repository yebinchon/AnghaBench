
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u64 ;
typedef int u32 ;



__attribute__((used)) static u32 pll_get_ibias(u64 rate, const u64 *table)
{
 u32 i, num = table[0];

 for (i = 1; i < num + 1; i++)
  if (rate <= table[i])
   break;

 return (i == num + 1) ? num : i;
}
