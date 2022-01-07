
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_CLK_FREQ_PLL ;
 int PMC_CLK_FREQ_XTAL ;

__attribute__((used)) static inline int plt_parent_to_reg(int index)
{
 switch (index) {
 default:
 case 0:
  return PMC_CLK_FREQ_XTAL;
 case 1:
  return PMC_CLK_FREQ_PLL;
 }
}
