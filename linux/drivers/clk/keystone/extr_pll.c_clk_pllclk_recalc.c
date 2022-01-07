
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll_data {int pllm_lower_mask; int pllm_upper_mask; int pllm_upper_shift; int plld_mask; int clkod_mask; int clkod_shift; int postdiv; scalar_t__ pllod; scalar_t__ has_pllctrl; scalar_t__ pll_ctl0; scalar_t__ pllm; } ;
struct clk_pll {struct clk_pll_data* pll_data; } ;
struct clk_hw {int dummy; } ;


 int readl (scalar_t__) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pllclk_recalc(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct clk_pll *pll = to_clk_pll(hw);
 struct clk_pll_data *pll_data = pll->pll_data;
 unsigned long rate = parent_rate;
 u32 mult = 0, prediv, postdiv, val;





 if (pll_data->has_pllctrl) {
  val = readl(pll_data->pllm);
  mult = (val & pll_data->pllm_lower_mask);
 }


 val = readl(pll_data->pll_ctl0);
 mult |= ((val & pll_data->pllm_upper_mask)
   >> pll_data->pllm_upper_shift);
 prediv = (val & pll_data->plld_mask);

 if (!pll_data->has_pllctrl)

  postdiv = ((val & pll_data->clkod_mask) >>
     pll_data->clkod_shift) + 1;
 else if (pll_data->pllod) {
  postdiv = readl(pll_data->pllod);
  postdiv = ((postdiv & pll_data->clkod_mask) >>
    pll_data->clkod_shift) + 1;
 } else
  postdiv = pll_data->postdiv;

 rate /= (prediv + 1);
 rate = (rate * (mult + 1));
 rate /= postdiv;

 return rate;
}
