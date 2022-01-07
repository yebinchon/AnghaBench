
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {int regmap; } ;


 int AT91_PMC_OHCIUSBDIV ;
 int AT91_PMC_USB ;
 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int EINVAL ;
 unsigned long SAM9X5_USB_DIV_SHIFT ;
 int SAM9X5_USB_MAX_DIV ;
 int regmap_update_bits (int ,int ,int ,unsigned long) ;
 struct at91sam9x5_clk_usb* to_at91sam9x5_clk_usb (struct clk_hw*) ;

__attribute__((used)) static int at91sam9x5_clk_usb_set_rate(struct clk_hw *hw, unsigned long rate,
           unsigned long parent_rate)
{
 struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 unsigned long div;

 if (!rate)
  return -EINVAL;

 div = DIV_ROUND_CLOSEST(parent_rate, rate);
 if (div > SAM9X5_USB_MAX_DIV + 1 || !div)
  return -EINVAL;

 regmap_update_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_OHCIUSBDIV,
      (div - 1) << SAM9X5_USB_DIV_SHIFT);

 return 0;
}
