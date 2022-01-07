
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int AXP288_ADC_TS_CURRENT_ON ;
 int AXP288_ADC_TS_CURRENT_ON_OFF_MASK ;
 int AXP288_ADC_TS_CURRENT_ON_ONDEMAND ;
 int AXP288_ADC_TS_PIN_CTRL ;
 int AXP288_GP_ADC_H ;
 int regmap_bulk_read (struct regmap*,int ,int*,int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int intel_xpower_pmic_get_raw_temp(struct regmap *regmap, int reg)
{
 int ret, adc_ts_pin_ctrl;
 u8 buf[2];
 ret = regmap_read(regmap, AXP288_ADC_TS_PIN_CTRL, &adc_ts_pin_ctrl);
 if (ret)
  return ret;

 if (adc_ts_pin_ctrl & AXP288_ADC_TS_CURRENT_ON_OFF_MASK) {
  ret = regmap_update_bits(regmap, AXP288_ADC_TS_PIN_CTRL,
      AXP288_ADC_TS_CURRENT_ON_OFF_MASK,
      AXP288_ADC_TS_CURRENT_ON_ONDEMAND);
  if (ret)
   return ret;


  usleep_range(6000, 10000);
 }

 ret = regmap_bulk_read(regmap, AXP288_GP_ADC_H, buf, 2);
 if (ret == 0)
  ret = (buf[0] << 4) + ((buf[1] >> 4) & 0x0f);

 if (adc_ts_pin_ctrl & AXP288_ADC_TS_CURRENT_ON_OFF_MASK) {
  regmap_update_bits(regmap, AXP288_ADC_TS_PIN_CTRL,
       AXP288_ADC_TS_CURRENT_ON_OFF_MASK,
       AXP288_ADC_TS_CURRENT_ON);
 }

 return ret;
}
