
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int BIT (int) ;
 int PLL_HUAYRA_ALPHA_WIDTH ;

__attribute__((used)) static unsigned long
alpha_huayra_pll_calc_rate(u64 prate, u32 l, u32 a)
{




 if (a >= BIT(PLL_HUAYRA_ALPHA_WIDTH - 1))
  l -= 1;

 return (prate * l) + (prate * a >> PLL_HUAYRA_ALPHA_WIDTH);
}
