
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pll_data {unsigned long input_rate; } ;
struct clk {unsigned long rate; int flags; unsigned long div; int name; TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; struct pll_data* pll_data; } ;


 int FIXED_DIV_PLL ;
 int PLLDIV_EN ;
 int PLLDIV_RATIO_MASK ;
 int PRE_PLL ;
 scalar_t__ WARN_ON (int) ;
 int pll_read (struct pll_data*,int) ;
 int pr_debug (char*,int ,int,...) ;

__attribute__((used)) static unsigned long clk_sysclk_recalc(struct clk *clk)
{
 u32 v, plldiv = 0;
 struct pll_data *pll;
 unsigned long rate = clk->rate;

 if (WARN_ON(!clk->parent))
  return rate;

 rate = clk->parent->rate;


 if (WARN_ON(!clk->parent->pll_data))
  return rate;

 pll = clk->parent->pll_data;


 if (clk->flags & PRE_PLL)
  rate = pll->input_rate;

 if (!clk->div) {
  pr_debug("%s: (no divider) rate = %lu KHz\n",
    clk->name, rate / 1000);
  return rate;
 }

 if (clk->flags & FIXED_DIV_PLL) {
  rate /= clk->div;
  pr_debug("%s: (fixed divide by %d) rate = %lu KHz\n",
    clk->name, clk->div, rate / 1000);
  return rate;
 }

 v = pll_read(pll, clk->div);
 if (v & PLLDIV_EN)
  plldiv = (v & PLLDIV_RATIO_MASK) + 1;

 if (plldiv == 0)
  plldiv = 1;

 rate /= plldiv;

 pr_debug("%s: (divide by %d) rate = %lu KHz\n",
   clk->name, plldiv, rate / 1000);

 return rate;
}
