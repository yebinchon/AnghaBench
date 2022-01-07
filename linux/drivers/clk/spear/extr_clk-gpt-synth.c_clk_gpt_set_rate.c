
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpt_rate_tbl {unsigned long mscale; unsigned long nscale; } ;
struct clk_hw {int dummy; } ;
struct clk_gpt {scalar_t__ lock; int reg; int rtbl_cnt; struct gpt_rate_tbl* rtbl; } ;


 unsigned long GPT_MSCALE_MASK ;
 unsigned long GPT_NSCALE_MASK ;
 unsigned long GPT_NSCALE_SHIFT ;
 int clk_round_rate_index (struct clk_hw*,unsigned long,unsigned long,int ,int ,int*) ;
 int gpt_calc_rate ;
 unsigned long readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_gpt* to_clk_gpt (struct clk_hw*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int clk_gpt_set_rate(struct clk_hw *hw, unsigned long drate,
    unsigned long prate)
{
 struct clk_gpt *gpt = to_clk_gpt(hw);
 struct gpt_rate_tbl *rtbl = gpt->rtbl;
 unsigned long flags = 0, val;
 int i;

 clk_round_rate_index(hw, drate, prate, gpt_calc_rate, gpt->rtbl_cnt,
   &i);

 if (gpt->lock)
  spin_lock_irqsave(gpt->lock, flags);

 val = readl(gpt->reg) & ~GPT_MSCALE_MASK;
 val &= ~(GPT_NSCALE_MASK << GPT_NSCALE_SHIFT);

 val |= rtbl[i].mscale & GPT_MSCALE_MASK;
 val |= (rtbl[i].nscale & GPT_NSCALE_MASK) << GPT_NSCALE_SHIFT;

 writel_relaxed(val, gpt->reg);

 if (gpt->lock)
  spin_unlock_irqrestore(gpt->lock, flags);

 return 0;
}
