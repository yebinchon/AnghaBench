
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si5351_driver_data {int dummy; } ;
typedef enum si5351_multisynth_src { ____Placeholder_si5351_multisynth_src } si5351_multisynth_src ;


 int EINVAL ;
 scalar_t__ SI5351_CLK0_CTRL ;
 int SI5351_CLK_PLL_SELECT ;
 int SI5351_MULTISYNTH_SRC_DEFAULT ;
 int SI5351_MULTISYNTH_SRC_VCO0 ;
 int si5351_set_bits (struct si5351_driver_data*,scalar_t__,int ,int ) ;

__attribute__((used)) static int _si5351_msynth_reparent(struct si5351_driver_data *drvdata,
       int num, enum si5351_multisynth_src parent)
{
 if (parent == SI5351_MULTISYNTH_SRC_DEFAULT)
  return 0;

 if (num > 8)
  return -EINVAL;

 si5351_set_bits(drvdata, SI5351_CLK0_CTRL + num, SI5351_CLK_PLL_SELECT,
   (parent == SI5351_MULTISYNTH_SRC_VCO0) ? 0 :
   SI5351_CLK_PLL_SELECT);
 return 0;
}
