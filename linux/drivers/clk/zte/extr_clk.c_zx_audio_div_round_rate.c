
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_clk_audio_div_table {int int_reg; int frac_reg; } ;
struct clk_zx_audio_divider {int dummy; } ;
struct clk_hw {int dummy; } ;


 long audio_calc_rate (struct clk_zx_audio_divider*,int ,int ,unsigned long) ;
 int audio_calc_reg (struct clk_zx_audio_divider*,struct zx_clk_audio_div_table*,unsigned long,unsigned long) ;
 struct clk_zx_audio_divider* to_clk_zx_audio_div (struct clk_hw*) ;

__attribute__((used)) static long zx_audio_div_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct clk_zx_audio_divider *zx_audio_div = to_clk_zx_audio_div(hw);
 struct zx_clk_audio_div_table divt;

 audio_calc_reg(zx_audio_div, &divt, rate, *prate);

 return audio_calc_rate(zx_audio_div, divt.frac_reg, divt.int_reg, *prate);
}
