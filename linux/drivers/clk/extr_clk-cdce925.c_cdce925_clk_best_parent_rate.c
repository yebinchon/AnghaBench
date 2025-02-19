
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;


 unsigned long CDCE925_PLL_FREQUENCY_MAX ;
 int CDCE925_PLL_FREQUENCY_MIN ;
 int DIV_ROUND_UP (int ,unsigned long) ;
 unsigned long abs (long) ;
 struct clk* clk_get_parent (struct clk*) ;
 unsigned long clk_get_rate (struct clk*) ;
 long clk_round_rate (struct clk*,unsigned long) ;
 scalar_t__ max (unsigned long,int ) ;
 scalar_t__ min (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long cdce925_clk_best_parent_rate(
 struct clk_hw *hw, unsigned long rate)
{
 struct clk *pll = clk_get_parent(hw->clk);
 struct clk *root = clk_get_parent(pll);
 unsigned long root_rate = clk_get_rate(root);
 unsigned long best_rate_error = rate;
 u16 pdiv_min;
 u16 pdiv_max;
 u16 pdiv_best;
 u16 pdiv_now;

 if (root_rate % rate == 0)
  return root_rate;

 pdiv_min = (u16)max(1ul, DIV_ROUND_UP(CDCE925_PLL_FREQUENCY_MIN, rate));
 pdiv_max = (u16)min(127ul, CDCE925_PLL_FREQUENCY_MAX / rate);

 if (pdiv_min > pdiv_max)
  return 0;

 pdiv_best = pdiv_min;
 for (pdiv_now = pdiv_min; pdiv_now < pdiv_max; ++pdiv_now) {
  unsigned long target_rate = rate * pdiv_now;
  long pll_rate = clk_round_rate(pll, target_rate);
  unsigned long actual_rate;
  unsigned long rate_error;

  if (pll_rate <= 0)
   continue;
  actual_rate = pll_rate / pdiv_now;
  rate_error = abs((long)actual_rate - (long)rate);
  if (rate_error < best_rate_error) {
   pdiv_best = pdiv_now;
   best_rate_error = rate_error;
  }


 }

 return rate * pdiv_best;
}
