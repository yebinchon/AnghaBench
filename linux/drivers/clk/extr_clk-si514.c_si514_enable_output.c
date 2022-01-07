
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si514 {int regmap; } ;


 int SI514_CONTROL_OE ;
 int SI514_REG_CONTROL ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int si514_enable_output(struct clk_si514 *data, bool enable)
{
 return regmap_update_bits(data->regmap, SI514_REG_CONTROL,
  SI514_CONTROL_OE, enable ? SI514_CONTROL_OE : 0);
}
