
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct krait_mux_clk {int mask; int shift; int offset; scalar_t__ lpl; } ;


 int LPL_SHIFT ;
 int krait_clock_reg_lock ;
 int krait_get_l2_indirect_reg (int ) ;
 int krait_set_l2_indirect_reg (int ,int) ;
 int mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void __krait_mux_set_sel(struct krait_mux_clk *mux, int sel)
{
 unsigned long flags;
 u32 regval;

 spin_lock_irqsave(&krait_clock_reg_lock, flags);
 regval = krait_get_l2_indirect_reg(mux->offset);
 regval &= ~(mux->mask << mux->shift);
 regval |= (sel & mux->mask) << mux->shift;
 if (mux->lpl) {
  regval &= ~(mux->mask << (mux->shift + LPL_SHIFT));
  regval |= (sel & mux->mask) << (mux->shift + LPL_SHIFT);
 }
 krait_set_l2_indirect_reg(mux->offset, regval);
 spin_unlock_irqrestore(&krait_clock_reg_lock, flags);


 mb();
 udelay(1);
}
