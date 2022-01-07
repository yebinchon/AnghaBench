
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw_omap_comp {TYPE_1__** comp_clks; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct clk_hw* hw; } ;



__attribute__((used)) static inline struct clk_hw *_get_hw(struct clk_hw_omap_comp *clk, int idx)
{
 if (!clk)
  return ((void*)0);

 if (!clk->comp_clks[idx])
  return ((void*)0);

 return clk->comp_clks[idx]->hw;
}
