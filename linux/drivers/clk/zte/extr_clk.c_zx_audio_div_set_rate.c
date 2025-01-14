
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_clk_audio_div_table {unsigned long rate; unsigned int frac_reg; unsigned int int_reg; } ;
struct clk_zx_audio_divider {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 unsigned int CLK_AUDIO_DIV_INT_FRAC_RE ;
 int audio_calc_reg (struct clk_zx_audio_divider*,struct zx_clk_audio_div_table*,unsigned long,unsigned long) ;
 int mdelay (int) ;
 int pr_debug (char*,unsigned long) ;
 unsigned int readl_relaxed (scalar_t__) ;
 struct clk_zx_audio_divider* to_clk_zx_audio_div (struct clk_hw*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int zx_audio_div_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct clk_zx_audio_divider *zx_audio_div = to_clk_zx_audio_div(hw);
 struct zx_clk_audio_div_table divt;
 unsigned int val;

 audio_calc_reg(zx_audio_div, &divt, rate, parent_rate);
 if (divt.rate != rate)
  pr_debug("the real rate is:%ld", divt.rate);

 writel_relaxed(divt.frac_reg, zx_audio_div->reg_base);

 val = readl_relaxed(zx_audio_div->reg_base + 0x4);
 val &= ~0xffff;
 val |= divt.int_reg | CLK_AUDIO_DIV_INT_FRAC_RE;
 writel_relaxed(val, zx_audio_div->reg_base + 0x4);

 mdelay(1);

 val = readl_relaxed(zx_audio_div->reg_base + 0x4);
 val &= ~CLK_AUDIO_DIV_INT_FRAC_RE;
 writel_relaxed(val, zx_audio_div->reg_base + 0x4);

 return 0;
}
