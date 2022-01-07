
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {scalar_t__ variant; } ;
typedef enum si5351_pll_src { ____Placeholder_si5351_pll_src } si5351_pll_src ;


 int EINVAL ;
 int SI5351_PLLA_SOURCE ;
 int SI5351_PLLB_SOURCE ;
 int SI5351_PLL_INPUT_SOURCE ;
 int SI5351_PLL_SRC_DEFAULT ;
 int SI5351_PLL_SRC_XTAL ;
 scalar_t__ SI5351_VARIANT_C ;
 int si5351_set_bits (struct si5351_driver_data*,int ,int ,int ) ;

__attribute__((used)) static int _si5351_pll_reparent(struct si5351_driver_data *drvdata,
    int num, enum si5351_pll_src parent)
{
 u8 mask = (num == 0) ? SI5351_PLLA_SOURCE : SI5351_PLLB_SOURCE;

 if (parent == SI5351_PLL_SRC_DEFAULT)
  return 0;

 if (num > 2)
  return -EINVAL;

 if (drvdata->variant != SI5351_VARIANT_C &&
     parent != SI5351_PLL_SRC_XTAL)
  return -EINVAL;

 si5351_set_bits(drvdata, SI5351_PLL_INPUT_SOURCE, mask,
   (parent == SI5351_PLL_SRC_XTAL) ? 0 : mask);
 return 0;
}
