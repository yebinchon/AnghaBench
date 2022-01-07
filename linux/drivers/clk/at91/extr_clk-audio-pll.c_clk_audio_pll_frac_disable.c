
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_audio_frac {int regmap; } ;


 int AT91_PMC_AUDIO_PLL0 ;
 int AT91_PMC_AUDIO_PLL_PLLEN ;
 int AT91_PMC_AUDIO_PLL_RESETN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_audio_frac* to_clk_audio_frac (struct clk_hw*) ;

__attribute__((used)) static void clk_audio_pll_frac_disable(struct clk_hw *hw)
{
 struct clk_audio_frac *frac = to_clk_audio_frac(hw);

 regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_PLLEN, 0);

 regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_RESETN, 0);
}
