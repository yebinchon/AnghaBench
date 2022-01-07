
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_factor_masks {unsigned int num_shift; unsigned int num_mask; unsigned int den_shift; unsigned int den_mask; unsigned int factor; } ;
struct mmp_clk_factor {struct mmp_clk_factor_masks* masks; int base; } ;
struct clk_hw {int dummy; } ;


 unsigned int readl_relaxed (int ) ;
 struct mmp_clk_factor* to_clk_factor (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_factor_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct mmp_clk_factor *factor = to_clk_factor(hw);
 struct mmp_clk_factor_masks *masks = factor->masks;
 unsigned int val, num, den;

 val = readl_relaxed(factor->base);


 num = (val >> masks->num_shift) & masks->num_mask;


 den = (val >> masks->den_shift) & masks->den_mask;

 if (!den)
  return 0;

 return (((parent_rate / 10000) * den) /
   (num * factor->masks->factor)) * 10000;
}
