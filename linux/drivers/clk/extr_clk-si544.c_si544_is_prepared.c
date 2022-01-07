
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544 {int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int SI544_OE_STATE_ODC_OE ;
 int SI544_REG_OE_STATE ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_si544* to_clk_si544 (struct clk_hw*) ;

__attribute__((used)) static int si544_is_prepared(struct clk_hw *hw)
{
 struct clk_si544 *data = to_clk_si544(hw);
 unsigned int val;
 int err;

 err = regmap_read(data->regmap, SI544_REG_OE_STATE, &val);
 if (err < 0)
  return err;

 return !!(val & SI544_OE_STATE_ODC_OE);
}
