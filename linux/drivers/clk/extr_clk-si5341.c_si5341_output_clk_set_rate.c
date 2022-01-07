
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


 int BIT (int) ;
 int SI5341_OUT_CFG_RDIV_FORCE2 ;
 int SI5341_OUT_CONFIG (struct clk_si5341_output*) ;
 int SI5341_OUT_R_REG (struct clk_si5341_output*) ;
 int regmap_bulk_write (int ,int ,int*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_si5341_output* to_clk_si5341_output (struct clk_hw*) ;

__attribute__((used)) static int si5341_output_clk_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_si5341_output *output = to_clk_si5341_output(hw);

 u32 r_div = (parent_rate / rate) >> 1;
 int err;
 u8 r[3];

 if (r_div <= 1)
  r_div = 0;
 else if (r_div >= BIT(24))
  r_div = BIT(24) - 1;
 else
  --r_div;


 err = regmap_update_bits(output->data->regmap,
   SI5341_OUT_CONFIG(output),
   SI5341_OUT_CFG_RDIV_FORCE2,
   (r_div == 0) ? SI5341_OUT_CFG_RDIV_FORCE2 : 0);
 if (err < 0)
  return err;


 r[0] = r_div ? (r_div & 0xff) : 1;
 r[1] = (r_div >> 8) & 0xff;
 r[2] = (r_div >> 16) & 0xff;
 err = regmap_bulk_write(output->data->regmap,
   SI5341_OUT_R_REG(output), r, 3);

 return 0;
}
