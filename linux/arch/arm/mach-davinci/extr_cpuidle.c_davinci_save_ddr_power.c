
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DDR2_LPMODEN_BIT ;
 scalar_t__ DDR2_SDRCR_OFFSET ;
 int DDR2_SRPD_BIT ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__ ddr2_reg_base ;

__attribute__((used)) static void davinci_save_ddr_power(int enter, bool pdown)
{
 u32 val;

 val = __raw_readl(ddr2_reg_base + DDR2_SDRCR_OFFSET);

 if (enter) {
  if (pdown)
   val |= DDR2_SRPD_BIT;
  else
   val &= ~DDR2_SRPD_BIT;
  val |= DDR2_LPMODEN_BIT;
 } else {
  val &= ~(DDR2_SRPD_BIT | DDR2_LPMODEN_BIT);
 }

 __raw_writel(val, ddr2_reg_base + DDR2_SDRCR_OFFSET);
}
