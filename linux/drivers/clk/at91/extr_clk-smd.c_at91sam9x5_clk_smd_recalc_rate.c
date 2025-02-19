
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_smd {int regmap; } ;


 int AT91_PMC_SMD ;
 unsigned int AT91_PMC_SMD_DIV ;
 unsigned int SMD_DIV_SHIFT ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct at91sam9x5_clk_smd* to_at91sam9x5_clk_smd (struct clk_hw*) ;

__attribute__((used)) static unsigned long at91sam9x5_clk_smd_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(hw);
 unsigned int smdr;
 u8 smddiv;

 regmap_read(smd->regmap, AT91_PMC_SMD, &smdr);
 smddiv = (smdr & AT91_PMC_SMD_DIV) >> SMD_DIV_SHIFT;

 return parent_rate / (smddiv + 1);
}
