
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_clk_common {scalar_t__ reg; int regmap; } ;
struct sprd_pll {int regs_num; struct sprd_clk_common common; } ;


 scalar_t__ WARN_ON (int) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static inline unsigned int
sprd_pll_read(const struct sprd_pll *pll, u8 index)
{
 const struct sprd_clk_common *common = &pll->common;
 unsigned int val = 0;

 if (WARN_ON(index >= pll->regs_num))
  return 0;

 regmap_read(common->regmap, common->reg + index * 4, &val);

 return val;
}
