
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DIV_ROUND_UP (scalar_t__,int) ;
 scalar_t__ SUN9I_CPUS_MUX_PARENT_PLL4 ;

__attribute__((used)) static long sun9i_a80_cpus_clk_round(unsigned long rate, u8 *divp, u8 *pre_divp,
         u8 parent, unsigned long parent_rate)
{
 u8 div, pre_div = 1;





 if (parent_rate && rate > parent_rate)
  rate = parent_rate;

 div = DIV_ROUND_UP(parent_rate, rate);


 if (parent == SUN9I_CPUS_MUX_PARENT_PLL4 && div > 4) {

  if (div < 32) {
   pre_div = div;
   div = 1;
  } else if (div < 64) {
   pre_div = DIV_ROUND_UP(div, 2);
   div = 2;
  } else if (div < 96) {
   pre_div = DIV_ROUND_UP(div, 3);
   div = 3;
  } else {
   pre_div = DIV_ROUND_UP(div, 4);
   div = 4;
  }
 }


 if (divp) {
  *divp = div - 1;
  *pre_divp = pre_div - 1;
 }

 return parent_rate / pre_div / div;
}
