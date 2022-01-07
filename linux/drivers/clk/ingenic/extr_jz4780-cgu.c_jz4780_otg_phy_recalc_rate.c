
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int BUG () ;
 scalar_t__ CGU_REG_USBPCR1 ;




 unsigned int USBPCR1_REFCLKDIV_MASK ;
 TYPE_1__* cgu ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned long jz4780_otg_phy_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 u32 usbpcr1;
 unsigned refclk_div;

 usbpcr1 = readl(cgu->base + CGU_REG_USBPCR1);
 refclk_div = usbpcr1 & USBPCR1_REFCLKDIV_MASK;

 switch (refclk_div) {
 case 131:
  return 12000000;

 case 129:
  return 24000000;

 case 128:
  return 48000000;

 case 130:
  return 19200000;
 }

 BUG();
 return parent_rate;
}
