
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_zx_audio {int reg_base; } ;
struct clk_hw {int dummy; } ;


 unsigned long calc_rate (int ,unsigned long) ;
 int readl_relaxed (int ) ;
 struct clk_zx_audio* to_clk_zx_audio (struct clk_hw*) ;

__attribute__((used)) static unsigned long zx_audio_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct clk_zx_audio *zx_audio = to_clk_zx_audio(hw);
 u32 reg;

 reg = readl_relaxed(zx_audio->reg_base);
 return calc_rate(reg, parent_rate);
}
