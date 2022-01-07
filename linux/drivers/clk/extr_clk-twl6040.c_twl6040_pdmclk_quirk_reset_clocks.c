
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_pdmclk {int dummy; } ;


 int TWL6040_REG_HPPLLCTL ;
 int TWL6040_REG_LPPLLCTL ;
 int twl6040_pdmclk_reset_one_clock (struct twl6040_pdmclk*,int ) ;

__attribute__((used)) static int twl6040_pdmclk_quirk_reset_clocks(struct twl6040_pdmclk *pdmclk)
{
 int ret;

 ret = twl6040_pdmclk_reset_one_clock(pdmclk, TWL6040_REG_HPPLLCTL);
 if (ret)
  return ret;

 ret = twl6040_pdmclk_reset_one_clock(pdmclk, TWL6040_REG_LPPLLCTL);
 if (ret)
  return ret;

 return 0;
}
