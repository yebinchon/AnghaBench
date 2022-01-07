
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
 int MOR_KEY_MASK ;
 int clk_main_osc_ready (struct regmap*) ;
 int cpu_relax () ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 struct clk_main_osc* to_clk_main_osc (struct clk_hw*) ;

__attribute__((used)) static int clk_main_osc_prepare(struct clk_hw *hw)
{
 struct clk_main_osc *osc = to_clk_main_osc(hw);
 struct regmap *regmap = osc->regmap;
 u32 tmp;

 regmap_read(regmap, AT91_CKGR_MOR, &tmp);
 tmp &= ~MOR_KEY_MASK;

 if (tmp & AT91_PMC_OSCBYPASS)
  return 0;

 if (!(tmp & AT91_PMC_MOSCEN)) {
  tmp |= AT91_PMC_MOSCEN | AT91_PMC_KEY;
  regmap_write(regmap, AT91_CKGR_MOR, tmp);
 }

 while (!clk_main_osc_ready(regmap))
  cpu_relax();

 return 0;
}
