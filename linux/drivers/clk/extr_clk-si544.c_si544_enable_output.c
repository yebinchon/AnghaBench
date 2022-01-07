
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544 {int regmap; } ;


 int SI544_OE_STATE_ODC_OE ;
 int SI544_REG_OE_STATE ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int si544_enable_output(struct clk_si544 *data, bool enable)
{
 return regmap_update_bits(data->regmap, SI544_REG_OE_STATE,
  SI544_OE_STATE_ODC_OE, enable ? SI544_OE_STATE_ODC_OE : 0);
}
