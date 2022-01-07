
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {int variant; } ;
typedef enum si5351_clkout_src { ____Placeholder_si5351_clkout_src } si5351_clkout_src ;


 int EINVAL ;
 scalar_t__ SI5351_CLK0_CTRL ;




 int SI5351_CLK_INPUT_CLKIN ;
 int SI5351_CLK_INPUT_MASK ;
 int SI5351_CLK_INPUT_MULTISYNTH_0_4 ;
 int SI5351_CLK_INPUT_MULTISYNTH_N ;
 int SI5351_CLK_INPUT_XTAL ;
 int SI5351_VARIANT_C ;
 int si5351_set_bits (struct si5351_driver_data*,scalar_t__,int ,int ) ;

__attribute__((used)) static int _si5351_clkout_reparent(struct si5351_driver_data *drvdata,
       int num, enum si5351_clkout_src parent)
{
 u8 val;

 if (num > 8)
  return -EINVAL;

 switch (parent) {
 case 129:
  val = SI5351_CLK_INPUT_MULTISYNTH_N;
  break;
 case 130:

  if (num == 0 || num == 4)
   val = SI5351_CLK_INPUT_MULTISYNTH_N;
  else
   val = SI5351_CLK_INPUT_MULTISYNTH_0_4;
  break;
 case 128:
  val = SI5351_CLK_INPUT_XTAL;
  break;
 case 131:
  if (drvdata->variant != SI5351_VARIANT_C)
   return -EINVAL;

  val = SI5351_CLK_INPUT_CLKIN;
  break;
 default:
  return 0;
 }

 si5351_set_bits(drvdata, SI5351_CLK0_CTRL + num,
   SI5351_CLK_INPUT_MASK, val);
 return 0;
}
