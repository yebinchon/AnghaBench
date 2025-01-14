
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_audio_frac {int fracr; int nd; int regmap; } ;


 int AT91_PMC_AUDIO_PLL0 ;
 int AT91_PMC_AUDIO_PLL1 ;
 int AT91_PMC_AUDIO_PLL_FRACR_MASK ;
 int AT91_PMC_AUDIO_PLL_ND (int ) ;
 int AT91_PMC_AUDIO_PLL_ND_MASK ;
 int AT91_PMC_AUDIO_PLL_PLLEN ;
 int AT91_PMC_AUDIO_PLL_RESETN ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_audio_frac* to_clk_audio_frac (struct clk_hw*) ;

__attribute__((used)) static int clk_audio_pll_frac_enable(struct clk_hw *hw)
{
 struct clk_audio_frac *frac = to_clk_audio_frac(hw);

 regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_RESETN, 0);
 regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_RESETN,
      AT91_PMC_AUDIO_PLL_RESETN);
 regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL1,
      AT91_PMC_AUDIO_PLL_FRACR_MASK, frac->fracr);





 regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_PLLEN |
      AT91_PMC_AUDIO_PLL_ND_MASK,
      AT91_PMC_AUDIO_PLL_PLLEN |
      AT91_PMC_AUDIO_PLL_ND(frac->nd));

 return 0;
}
