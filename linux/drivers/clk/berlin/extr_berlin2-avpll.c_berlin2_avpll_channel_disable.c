
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct berlin2_avpll_channel {int index; scalar_t__ base; } ;


 scalar_t__ VCO_CTRL10 ;
 int VCO_POWERUP_CH1 ;
 int readl_relaxed (scalar_t__) ;
 struct berlin2_avpll_channel* to_avpll_channel (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void berlin2_avpll_channel_disable(struct clk_hw *hw)
{
 struct berlin2_avpll_channel *ch = to_avpll_channel(hw);
 u32 reg;

 reg = readl_relaxed(ch->base + VCO_CTRL10);
 reg &= ~(VCO_POWERUP_CH1 << ch->index);
 writel_relaxed(reg, ch->base + VCO_CTRL10);
}
