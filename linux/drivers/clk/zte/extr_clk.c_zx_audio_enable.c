
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_zx_audio {int reg_base; } ;
struct clk_hw {int dummy; } ;


 int ZX_AUDIO_EN ;
 int readl_relaxed (int ) ;
 struct clk_zx_audio* to_clk_zx_audio (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int zx_audio_enable(struct clk_hw *hw)
{
 struct clk_zx_audio *zx_audio = to_clk_zx_audio(hw);
 u32 reg;

 reg = readl_relaxed(zx_audio->reg_base);
 writel_relaxed(reg & ~ZX_AUDIO_EN, zx_audio->reg_base);
 return 0;
}
