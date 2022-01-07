
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct krait_div2_clk {int shift; int offset; scalar_t__ lpl; int width; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int LPL_SHIFT ;
 int krait_clock_reg_lock ;
 int krait_get_l2_indirect_reg (int ) ;
 int krait_set_l2_indirect_reg (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct krait_div2_clk* to_krait_div2_clk (struct clk_hw*) ;

__attribute__((used)) static int krait_div2_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct krait_div2_clk *d = to_krait_div2_clk(hw);
 unsigned long flags;
 u32 val;
 u32 mask = BIT(d->width) - 1;

 if (d->lpl)
  mask = mask << (d->shift + LPL_SHIFT) | mask << d->shift;

 spin_lock_irqsave(&krait_clock_reg_lock, flags);
 val = krait_get_l2_indirect_reg(d->offset);
 val &= ~mask;
 krait_set_l2_indirect_reg(d->offset, val);
 spin_unlock_irqrestore(&krait_clock_reg_lock, flags);

 return 0;
}
