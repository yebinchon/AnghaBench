
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP (unsigned long,int) ;
 int imx8m_clk_composite_compute_dividers (unsigned long,unsigned long,int*,int*) ;

__attribute__((used)) static long imx8m_clk_composite_divider_round_rate(struct clk_hw *hw,
      unsigned long rate,
      unsigned long *prate)
{
 int prediv_value;
 int div_value;

 imx8m_clk_composite_compute_dividers(rate, *prate,
      &prediv_value, &div_value);
 rate = DIV_ROUND_UP(*prate, prediv_value);

 return DIV_ROUND_UP(rate, div_value);

}
