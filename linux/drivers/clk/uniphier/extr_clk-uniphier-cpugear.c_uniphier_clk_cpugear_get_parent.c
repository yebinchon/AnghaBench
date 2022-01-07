
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uniphier_clk_cpugear {unsigned int mask; scalar_t__ regbase; int regmap; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 scalar_t__ UNIPHIER_CLK_CPUGEAR_STAT ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 struct uniphier_clk_cpugear* to_uniphier_clk_cpugear (struct clk_hw*) ;

__attribute__((used)) static u8 uniphier_clk_cpugear_get_parent(struct clk_hw *hw)
{
 struct uniphier_clk_cpugear *gear = to_uniphier_clk_cpugear(hw);
 int num_parents = clk_hw_get_num_parents(hw);
 int ret;
 unsigned int val;

 ret = regmap_read(gear->regmap,
     gear->regbase + UNIPHIER_CLK_CPUGEAR_STAT, &val);
 if (ret)
  return ret;

 val &= gear->mask;

 return val < num_parents ? val : -EINVAL;
}
