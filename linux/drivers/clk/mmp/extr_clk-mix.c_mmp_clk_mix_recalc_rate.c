
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mmp_clk_mix_reg_info {int shift_div; int width_div; int reg_clk_sel; int reg_clk_ctrl; } ;
struct mmp_clk_mix {scalar_t__ type; struct mmp_clk_mix_reg_info reg_info; scalar_t__ lock; } ;
struct clk_hw {int dummy; } ;


 int MMP_CLK_BITS_GET_VAL (int ,int ,int ) ;
 scalar_t__ MMP_CLK_MIX_TYPE_V1 ;
 scalar_t__ MMP_CLK_MIX_TYPE_V2 ;
 unsigned int _get_div (struct mmp_clk_mix*,int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct mmp_clk_mix* to_clk_mix (struct clk_hw*) ;

__attribute__((used)) static unsigned long mmp_clk_mix_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct mmp_clk_mix *mix = to_clk_mix(hw);
 struct mmp_clk_mix_reg_info *ri = &mix->reg_info;
 unsigned long flags = 0;
 u32 mux_div = 0;
 u8 width, shift;
 unsigned int div;

 if (mix->lock)
  spin_lock_irqsave(mix->lock, flags);

 if (mix->type == MMP_CLK_MIX_TYPE_V1
  || mix->type == MMP_CLK_MIX_TYPE_V2)
  mux_div = readl(ri->reg_clk_ctrl);
 else
  mux_div = readl(ri->reg_clk_sel);

 if (mix->lock)
  spin_unlock_irqrestore(mix->lock, flags);

 width = mix->reg_info.width_div;
 shift = mix->reg_info.shift_div;

 div = _get_div(mix, MMP_CLK_BITS_GET_VAL(mux_div, width, shift));

 return parent_rate / div;
}
