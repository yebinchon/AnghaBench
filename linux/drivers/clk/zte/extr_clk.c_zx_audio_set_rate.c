
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_zx_audio {int reg_base; } ;
struct clk_hw {int dummy; } ;


 int calc_reg (unsigned long,unsigned long) ;
 struct clk_zx_audio* to_clk_zx_audio (struct clk_hw*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int zx_audio_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct clk_zx_audio *zx_audio = to_clk_zx_audio(hw);
 u32 reg;

 reg = calc_reg(parent_rate, rate);
 writel_relaxed(reg, zx_audio->reg_base);

 return 0;
}
