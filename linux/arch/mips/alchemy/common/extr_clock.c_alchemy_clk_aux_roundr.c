
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_auxpll_clk {unsigned long maxmult; } ;


 struct alchemy_auxpll_clk* to_auxpll_clk (struct clk_hw*) ;

__attribute__((used)) static long alchemy_clk_aux_roundr(struct clk_hw *hw,
         unsigned long rate,
         unsigned long *parent_rate)
{
 struct alchemy_auxpll_clk *a = to_auxpll_clk(hw);
 unsigned long mult;

 if (!rate || !*parent_rate)
  return 0;

 mult = rate / (*parent_rate);

 if (mult && (mult < 7))
  mult = 7;
 if (mult > a->maxmult)
  mult = a->maxmult;

 return (*parent_rate) * mult;
}
