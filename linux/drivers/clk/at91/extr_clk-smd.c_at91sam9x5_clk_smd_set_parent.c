
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_smd {int regmap; } ;


 int AT91_PMC_SMD ;
 int AT91_PMC_SMDS ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct at91sam9x5_clk_smd* to_at91sam9x5_clk_smd (struct clk_hw*) ;

__attribute__((used)) static int at91sam9x5_clk_smd_set_parent(struct clk_hw *hw, u8 index)
{
 struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(hw);

 if (index > 1)
  return -EINVAL;

 regmap_update_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMDS,
      index ? AT91_PMC_SMDS : 0);

 return 0;
}
