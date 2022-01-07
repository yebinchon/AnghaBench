
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct krait_div2_clk {int shift; int offset; int width; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int krait_get_l2_indirect_reg (int ) ;
 struct krait_div2_clk* to_krait_div2_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long
krait_div2_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 struct krait_div2_clk *d = to_krait_div2_clk(hw);
 u32 mask = BIT(d->width) - 1;
 u32 div;

 div = krait_get_l2_indirect_reg(d->offset);
 div >>= d->shift;
 div &= mask;
 div = (div + 1) * 2;

 return DIV_ROUND_UP(parent_rate, div);
}
