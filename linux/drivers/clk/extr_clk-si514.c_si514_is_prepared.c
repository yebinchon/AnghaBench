
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si514 {int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int SI514_CONTROL_OE ;
 int SI514_REG_CONTROL ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_si514* to_clk_si514 (struct clk_hw*) ;

__attribute__((used)) static int si514_is_prepared(struct clk_hw *hw)
{
 struct clk_si514 *data = to_clk_si514(hw);
 unsigned int val;
 int err;

 err = regmap_read(data->regmap, SI514_REG_CONTROL, &val);
 if (err < 0)
  return err;

 return !!(val & SI514_CONTROL_OE);
}
