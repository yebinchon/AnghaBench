
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_si5341_output {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int SI5341_OUT_CFG_OE ;
 int SI5341_OUT_CFG_PDN ;
 int SI5341_OUT_CONFIG (struct clk_si5341_output*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_si5341_output* to_clk_si5341_output (struct clk_hw*) ;

__attribute__((used)) static void si5341_output_clk_unprepare(struct clk_hw *hw)
{
 struct clk_si5341_output *output = to_clk_si5341_output(hw);

 regmap_update_bits(output->data->regmap,
   SI5341_OUT_CONFIG(output),
   SI5341_OUT_CFG_OE, 0);
 regmap_update_bits(output->data->regmap,
   SI5341_OUT_CONFIG(output),
   SI5341_OUT_CFG_PDN, SI5341_OUT_CFG_PDN);
}
