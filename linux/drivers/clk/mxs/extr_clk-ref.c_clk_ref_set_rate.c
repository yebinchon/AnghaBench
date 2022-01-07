
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct clk_ref {int idx; int reg; } ;
struct clk_hw {int dummy; } ;


 int do_div (int,unsigned long) ;
 int mxs_lock ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_ref* to_clk_ref (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int clk_ref_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_ref *ref = to_clk_ref(hw);
 unsigned long flags;
 u64 tmp = parent_rate;
 u32 val;
 u8 frac, shift = ref->idx * 8;

 tmp = tmp * 18 + rate / 2;
 do_div(tmp, rate);
 frac = tmp;

 if (frac < 18)
  frac = 18;
 else if (frac > 35)
  frac = 35;

 spin_lock_irqsave(&mxs_lock, flags);

 val = readl_relaxed(ref->reg);
 val &= ~(0x3f << shift);
 val |= frac << shift;
 writel_relaxed(val, ref->reg);

 spin_unlock_irqrestore(&mxs_lock, flags);

 return 0;
}
