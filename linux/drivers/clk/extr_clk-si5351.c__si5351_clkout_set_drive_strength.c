
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {int dummy; } ;
typedef enum si5351_drive_strength { ____Placeholder_si5351_drive_strength } si5351_drive_strength ;


 int EINVAL ;
 scalar_t__ SI5351_CLK0_CTRL ;
 int SI5351_CLK_DRIVE_STRENGTH_2MA ;
 int SI5351_CLK_DRIVE_STRENGTH_4MA ;
 int SI5351_CLK_DRIVE_STRENGTH_6MA ;
 int SI5351_CLK_DRIVE_STRENGTH_8MA ;
 int SI5351_CLK_DRIVE_STRENGTH_MASK ;




 int si5351_set_bits (struct si5351_driver_data*,scalar_t__,int ,int ) ;

__attribute__((used)) static int _si5351_clkout_set_drive_strength(
 struct si5351_driver_data *drvdata, int num,
 enum si5351_drive_strength drive)
{
 u8 mask;

 if (num > 8)
  return -EINVAL;

 switch (drive) {
 case 131:
  mask = SI5351_CLK_DRIVE_STRENGTH_2MA;
  break;
 case 130:
  mask = SI5351_CLK_DRIVE_STRENGTH_4MA;
  break;
 case 129:
  mask = SI5351_CLK_DRIVE_STRENGTH_6MA;
  break;
 case 128:
  mask = SI5351_CLK_DRIVE_STRENGTH_8MA;
  break;
 default:
  return 0;
 }

 si5351_set_bits(drvdata, SI5351_CLK0_CTRL + num,
   SI5351_CLK_DRIVE_STRENGTH_MASK, mask);
 return 0;
}
