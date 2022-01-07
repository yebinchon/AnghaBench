
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_si544_muldiv {int ls_div_bits; int hs_div; int fb_div_int; int fb_div_frac; int delta_m; } ;
struct clk_si544 {int regmap; } ;


 int SI544_REG_ADPLL_DELTA_M0 ;
 int SI544_REG_FBDIV0 ;
 int SI544_REG_HS_DIV ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int si544_get_muldiv(struct clk_si544 *data,
 struct clk_si544_muldiv *settings)
{
 int err;
 u8 reg[6];

 err = regmap_bulk_read(data->regmap, SI544_REG_HS_DIV, reg, 2);
 if (err)
  return err;

 settings->ls_div_bits = (reg[1] >> 4) & 0x07;
 settings->hs_div = (reg[1] & 0x07) << 8 | reg[0];

 err = regmap_bulk_read(data->regmap, SI544_REG_FBDIV0, reg, 6);
 if (err)
  return err;

 settings->fb_div_int = reg[4] | (reg[5] & 0x07) << 8;
 settings->fb_div_frac = reg[0] | reg[1] << 8 | reg[2] << 16 |
    reg[3] << 24;

 err = regmap_bulk_read(data->regmap, SI544_REG_ADPLL_DELTA_M0, reg, 3);
 if (err)
  return err;


 settings->delta_m = reg[0] << 8 | reg[1] << 16 | reg[2] << 24;
 settings->delta_m >>= 8;

 return 0;
}
