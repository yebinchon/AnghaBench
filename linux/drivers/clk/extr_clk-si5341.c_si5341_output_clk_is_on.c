
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_si5341_output {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int SI5341_OUT_CFG_OE ;
 int SI5341_OUT_CONFIG (struct clk_si5341_output*) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_si5341_output* to_clk_si5341_output (struct clk_hw*) ;

__attribute__((used)) static int si5341_output_clk_is_on(struct clk_hw *hw)
{
 struct clk_si5341_output *output = to_clk_si5341_output(hw);
 int err;
 u32 val;

 err = regmap_read(output->data->regmap,
   SI5341_OUT_CONFIG(output), &val);
 if (err < 0)
  return err;


 return (val & 0x03) == SI5341_OUT_CFG_OE;
}
