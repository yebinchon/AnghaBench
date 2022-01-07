
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct clk_main_osc {struct regmap* regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_CKGR_MOR ;
 int AT91_PMC_MOSCS ;
 int AT91_PMC_OSCBYPASS ;
 int AT91_PMC_SR ;
 scalar_t__ clk_main_parent_select (int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 struct clk_main_osc* to_clk_main_osc (struct clk_hw*) ;

__attribute__((used)) static int clk_main_osc_is_prepared(struct clk_hw *hw)
{
 struct clk_main_osc *osc = to_clk_main_osc(hw);
 struct regmap *regmap = osc->regmap;
 u32 tmp, status;

 regmap_read(regmap, AT91_CKGR_MOR, &tmp);
 if (tmp & AT91_PMC_OSCBYPASS)
  return 1;

 regmap_read(regmap, AT91_PMC_SR, &status);

 return (status & AT91_PMC_MOSCS) && clk_main_parent_select(tmp);
}
