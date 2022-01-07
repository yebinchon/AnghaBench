
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long AHCI_DM816_PLL_OUT ;
 int ARRAY_SIZE (unsigned long*) ;
 unsigned long* pll_mpy_table ;

__attribute__((used)) static int ahci_dm816_get_mpy_bits(unsigned long refclk_rate)
{
 unsigned long pll_multiplier;
 int i;






 pll_multiplier = AHCI_DM816_PLL_OUT / (refclk_rate / 100);

 for (i = 0; i < ARRAY_SIZE(pll_mpy_table); i++) {
  if (pll_mpy_table[i] == pll_multiplier)
   return i;
 }





 return -1;
}
