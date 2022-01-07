
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {int usbs_mask; int regmap; } ;


 int AT91_PMC_USB ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct at91sam9x5_clk_usb* to_at91sam9x5_clk_usb (struct clk_hw*) ;

__attribute__((used)) static int at91sam9x5_clk_usb_set_parent(struct clk_hw *hw, u8 index)
{
 struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);

 if (index > 1)
  return -EINVAL;

 regmap_update_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);

 return 0;
}
