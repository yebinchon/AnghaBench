
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {int regmap; } ;


 unsigned int AT91_PMC_OHCIUSBDIV ;
 int AT91_PMC_USB ;
 unsigned long DIV_ROUND_CLOSEST (unsigned long,int) ;
 unsigned int SAM9X5_USB_DIV_SHIFT ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct at91sam9x5_clk_usb* to_at91sam9x5_clk_usb (struct clk_hw*) ;

__attribute__((used)) static unsigned long at91sam9x5_clk_usb_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 unsigned int usbr;
 u8 usbdiv;

 regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
 usbdiv = (usbr & AT91_PMC_OHCIUSBDIV) >> SAM9X5_USB_DIV_SHIFT;

 return DIV_ROUND_CLOSEST(parent_rate, (usbdiv + 1));
}
