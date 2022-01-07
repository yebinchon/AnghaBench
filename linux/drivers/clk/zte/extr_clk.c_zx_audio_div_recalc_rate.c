
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_zx_audio_divider {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 unsigned long audio_calc_rate (struct clk_zx_audio_divider*,int ,int ,unsigned long) ;
 int readl_relaxed (scalar_t__) ;
 struct clk_zx_audio_divider* to_clk_zx_audio_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long zx_audio_div_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct clk_zx_audio_divider *zx_audio_div = to_clk_zx_audio_div(hw);
 u32 reg_frac, reg_int;

 reg_frac = readl_relaxed(zx_audio_div->reg_base);
 reg_int = readl_relaxed(zx_audio_div->reg_base + 0x4);

 return audio_calc_rate(zx_audio_div, reg_frac, reg_int, parent_rate);
}
