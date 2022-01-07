
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_pll14xx_rate_table {unsigned long rate; } ;
struct clk_pll14xx {int rate_count; struct imx_pll14xx_rate_table* rate_table; } ;
struct clk_hw {int dummy; } ;


 struct clk_pll14xx* to_clk_pll14xx (struct clk_hw*) ;

__attribute__((used)) static long clk_pll14xx_round_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long *prate)
{
 struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 const struct imx_pll14xx_rate_table *rate_table = pll->rate_table;
 int i;


 for (i = 0; i < pll->rate_count; i++)
  if (rate >= rate_table[i].rate)
   return rate_table[i].rate;


 return rate_table[i - 1].rate;
}
