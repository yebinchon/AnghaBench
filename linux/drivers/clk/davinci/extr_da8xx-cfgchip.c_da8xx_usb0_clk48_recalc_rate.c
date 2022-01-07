
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_usb0_clk48 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CFGCHIP (int) ;
 unsigned int CFGCHIP2_REFFREQ_12MHZ ;
 unsigned int CFGCHIP2_REFFREQ_13MHZ ;
 unsigned int CFGCHIP2_REFFREQ_19_2MHZ ;
 unsigned int CFGCHIP2_REFFREQ_20MHZ ;
 unsigned int CFGCHIP2_REFFREQ_24MHZ ;
 unsigned int CFGCHIP2_REFFREQ_26MHZ ;
 unsigned int CFGCHIP2_REFFREQ_38_4MHZ ;
 unsigned int CFGCHIP2_REFFREQ_40MHZ ;
 unsigned int CFGCHIP2_REFFREQ_48MHZ ;
 unsigned int CFGCHIP2_REFFREQ_MASK ;
 int regmap_write_bits (int ,int ,unsigned int,unsigned int) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static unsigned long da8xx_usb0_clk48_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);
 unsigned int mask, val;


 mask = CFGCHIP2_REFFREQ_MASK;
 switch (parent_rate) {
 case 12000000:
  val = CFGCHIP2_REFFREQ_12MHZ;
  break;
 case 13000000:
  val = CFGCHIP2_REFFREQ_13MHZ;
  break;
 case 19200000:
  val = CFGCHIP2_REFFREQ_19_2MHZ;
  break;
 case 20000000:
  val = CFGCHIP2_REFFREQ_20MHZ;
  break;
 case 24000000:
  val = CFGCHIP2_REFFREQ_24MHZ;
  break;
 case 26000000:
  val = CFGCHIP2_REFFREQ_26MHZ;
  break;
 case 38400000:
  val = CFGCHIP2_REFFREQ_38_4MHZ;
  break;
 case 40000000:
  val = CFGCHIP2_REFFREQ_40MHZ;
  break;
 case 48000000:
  val = CFGCHIP2_REFFREQ_48MHZ;
  break;
 default:
  return 0;
 }

 regmap_write_bits(usb0->regmap, CFGCHIP(2), mask, val);


 return 48000000;
}
