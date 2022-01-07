
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_si514_muldiv {int m_int; int m_frac; int hs_div; int ls_div_bits; } ;
struct clk_si514 {int regmap; } ;


 int SI514_REG_HS_DIV ;
 int SI514_REG_LP ;
 int SI514_REG_M_FRAC1 ;
 int regmap_bulk_write (int ,int ,int*,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int si514_set_muldiv(struct clk_si514 *data,
 struct clk_si514_muldiv *settings)
{
 u8 lp;
 u8 reg[7];
 int err;



 if (settings->m_int < 65 ||
  (settings->m_int == 65 && settings->m_frac <= 139575831))
  lp = 0x22;

 else if (settings->m_int < 67 ||
  (settings->m_int == 67 && settings->m_frac <= 461581994))
  lp = 0x23;

 else if (settings->m_int < 72 ||
  (settings->m_int == 72 && settings->m_frac <= 503383578))
  lp = 0x33;

 else if (settings->m_int < 75 ||
  (settings->m_int == 75 && settings->m_frac <= 452724474))
  lp = 0x34;
 else
  lp = 0x44;

 err = regmap_write(data->regmap, SI514_REG_LP, lp);
 if (err < 0)
  return err;

 reg[0] = settings->m_frac;
 reg[1] = settings->m_frac >> 8;
 reg[2] = settings->m_frac >> 16;
 reg[3] = settings->m_frac >> 24 | settings->m_int << 5;
 reg[4] = settings->m_int >> 3;
 reg[5] = settings->hs_div;
 reg[6] = (settings->hs_div >> 8) | (settings->ls_div_bits << 4);

 err = regmap_bulk_write(data->regmap, SI514_REG_HS_DIV, reg + 5, 2);
 if (err < 0)
  return err;




 return regmap_bulk_write(data->regmap, SI514_REG_M_FRAC1, reg, 5);
}
