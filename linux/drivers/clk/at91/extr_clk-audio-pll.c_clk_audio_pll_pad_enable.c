
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_audio_pad {int regmap; int div; int qdaudio; } ;


 int AT91_PMC_AUDIO_PLL0 ;
 int AT91_PMC_AUDIO_PLL1 ;
 int AT91_PMC_AUDIO_PLL_PADEN ;
 int AT91_PMC_AUDIO_PLL_QDPAD_MASK ;
 int AUDIO_PLL_QDPAD (int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_audio_pad* to_clk_audio_pad (struct clk_hw*) ;

__attribute__((used)) static int clk_audio_pll_pad_enable(struct clk_hw *hw)
{
 struct clk_audio_pad *apad_ck = to_clk_audio_pad(hw);

 regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL1,
      AT91_PMC_AUDIO_PLL_QDPAD_MASK,
      AUDIO_PLL_QDPAD(apad_ck->qdaudio, apad_ck->div));
 regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_PADEN, AT91_PMC_AUDIO_PLL_PADEN);

 return 0;
}
