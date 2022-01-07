
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct clk_si5341_output {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int SI5341_OUT_CFG_RDIV_FORCE2 ;
 int SI5341_OUT_CONFIG (struct clk_si5341_output*) ;
 int SI5341_OUT_R_REG (struct clk_si5341_output*) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_si5341_output* to_clk_si5341_output (struct clk_hw*) ;

__attribute__((used)) static unsigned long si5341_output_clk_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_si5341_output *output = to_clk_si5341_output(hw);
 int err;
 u32 val;
 u32 r_divider;
 u8 r[3];

 err = regmap_bulk_read(output->data->regmap,
   SI5341_OUT_R_REG(output), r, 3);
 if (err < 0)
  return err;


 r_divider = r[2] << 16 | r[1] << 8 | r[0];


 if (!r_divider)
  return 0;


 r_divider += 1;
 r_divider <<= 1;

 err = regmap_read(output->data->regmap,
   SI5341_OUT_CONFIG(output), &val);
 if (err < 0)
  return err;

 if (val & SI5341_OUT_CFG_RDIV_FORCE2)
  r_divider = 2;

 return parent_rate / r_divider;
}
