
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_audio_pmc {int qdpmc; int regmap; } ;


 int AT91_PMC_AUDIO_PLL0 ;
 int AT91_PMC_AUDIO_PLL_PMCEN ;
 int AT91_PMC_AUDIO_PLL_QDPMC (int ) ;
 int AT91_PMC_AUDIO_PLL_QDPMC_MASK ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_audio_pmc* to_clk_audio_pmc (struct clk_hw*) ;

__attribute__((used)) static int clk_audio_pll_pmc_enable(struct clk_hw *hw)
{
 struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(hw);

 regmap_update_bits(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
      AT91_PMC_AUDIO_PLL_PMCEN |
      AT91_PMC_AUDIO_PLL_QDPMC_MASK,
      AT91_PMC_AUDIO_PLL_PMCEN |
      AT91_PMC_AUDIO_PLL_QDPMC(apmc_ck->qdpmc));
 return 0;
}
