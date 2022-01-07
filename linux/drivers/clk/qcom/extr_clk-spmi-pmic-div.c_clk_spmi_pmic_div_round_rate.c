
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned int DIV_ROUND_UP (unsigned long,unsigned long) ;
 unsigned int div_factor_to_div (unsigned int) ;
 unsigned int div_to_div_factor (unsigned int) ;

__attribute__((used)) static long clk_spmi_pmic_div_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 unsigned int div, div_factor;

 div = DIV_ROUND_UP(*parent_rate, rate);
 div_factor = div_to_div_factor(div);
 div = div_factor_to_div(div_factor);

 return *parent_rate / div;
}
