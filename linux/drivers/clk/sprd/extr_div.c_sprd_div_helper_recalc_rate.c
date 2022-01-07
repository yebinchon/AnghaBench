
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_div_internal {unsigned int shift; int width; } ;
struct sprd_clk_common {int hw; int reg; int regmap; } ;


 unsigned long divider_recalc_rate (int *,unsigned long,unsigned long,int *,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

unsigned long sprd_div_helper_recalc_rate(struct sprd_clk_common *common,
       const struct sprd_div_internal *div,
       unsigned long parent_rate)
{
 unsigned long val;
 unsigned int reg;

 regmap_read(common->regmap, common->reg, &reg);
 val = reg >> div->shift;
 val &= (1 << div->width) - 1;

 return divider_recalc_rate(&common->hw, parent_rate, val, ((void*)0), 0,
       div->width);
}
