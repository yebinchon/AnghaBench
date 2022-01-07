
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_si544_muldiv {int hs_div; int ls_div_bits; int fb_div_frac; int fb_div_int; } ;
struct clk_si544 {int regmap; } ;


 int SI544_REG_FBDIV0 ;
 int SI544_REG_HS_DIV ;
 int regmap_bulk_write (int ,int ,int*,int) ;

__attribute__((used)) static int si544_set_muldiv(struct clk_si544 *data,
 struct clk_si544_muldiv *settings)
{
 int err;
 u8 reg[6];

 reg[0] = settings->hs_div;
 reg[1] = settings->hs_div >> 8 | settings->ls_div_bits << 4;

 err = regmap_bulk_write(data->regmap, SI544_REG_HS_DIV, reg, 2);
 if (err < 0)
  return err;

 reg[0] = settings->fb_div_frac;
 reg[1] = settings->fb_div_frac >> 8;
 reg[2] = settings->fb_div_frac >> 16;
 reg[3] = settings->fb_div_frac >> 24;
 reg[4] = settings->fb_div_int;
 reg[5] = settings->fb_div_int >> 8;





 return regmap_bulk_write(data->regmap, SI544_REG_FBDIV0, reg, 6);
}
