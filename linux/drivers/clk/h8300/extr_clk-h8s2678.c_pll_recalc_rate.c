
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_clock {int pllcr; } ;
struct clk_hw {int dummy; } ;


 int readb (int ) ;
 struct pll_clock* to_pll_clock (struct clk_hw*) ;

__attribute__((used)) static unsigned long pll_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct pll_clock *pll_clock = to_pll_clock(hw);
 int mul = 1 << (readb(pll_clock->pllcr) & 3);

 return parent_rate * mul;
}
