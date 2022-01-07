
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {unsigned int usbs_mask; int regmap; } ;


 int AT91_PMC_USB ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct at91sam9x5_clk_usb* to_at91sam9x5_clk_usb (struct clk_hw*) ;

__attribute__((used)) static u8 at91sam9x5_clk_usb_get_parent(struct clk_hw *hw)
{
 struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 unsigned int usbr;

 regmap_read(usb->regmap, AT91_PMC_USB, &usbr);

 return usbr & usb->usbs_mask;
}
