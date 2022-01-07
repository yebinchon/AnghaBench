
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct clk_pfdv2 {int frac_off; int reg; } ;
struct clk_hw {int dummy; } ;


 int CLK_PFDV2_FRAC_MASK ;
 int do_div (int,unsigned long) ;
 int pfd_lock ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_pfdv2* to_clk_pfdv2 (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int clk_pfdv2_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct clk_pfdv2 *pfd = to_clk_pfdv2(hw);
 unsigned long flags;
 u64 tmp = parent_rate;
 u32 val;
 u8 frac;

 tmp = tmp * 18 + rate / 2;
 do_div(tmp, rate);
 frac = tmp;
 if (frac < 12)
  frac = 12;
 else if (frac > 35)
  frac = 35;

 spin_lock_irqsave(&pfd_lock, flags);
 val = readl_relaxed(pfd->reg);
 val &= ~(CLK_PFDV2_FRAC_MASK << pfd->frac_off);
 val |= frac << pfd->frac_off;
 writel_relaxed(val, pfd->reg);
 spin_unlock_irqrestore(&pfd_lock, flags);

 return 0;
}
