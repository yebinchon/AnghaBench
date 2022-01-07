
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct clk_main_osc {struct regmap* regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_CKGR_MOR ;
 int AT91_PMC_KEY ;
 int AT91_PMC_MOSCEN ;
 int AT91_PMC_OSCBYPASS ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 struct clk_main_osc* to_clk_main_osc (struct clk_hw*) ;

__attribute__((used)) static void clk_main_osc_unprepare(struct clk_hw *hw)
{
 struct clk_main_osc *osc = to_clk_main_osc(hw);
 struct regmap *regmap = osc->regmap;
 u32 tmp;

 regmap_read(regmap, AT91_CKGR_MOR, &tmp);
 if (tmp & AT91_PMC_OSCBYPASS)
  return;

 if (!(tmp & AT91_PMC_MOSCEN))
  return;

 tmp &= ~(AT91_PMC_KEY | AT91_PMC_MOSCEN);
 regmap_write(regmap, AT91_CKGR_MOR, tmp | AT91_PMC_KEY);
}
