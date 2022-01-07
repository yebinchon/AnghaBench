
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {int regmap; } ;


 int AT91_PMC_USB ;
 int AT91_PMC_USBS ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct at91sam9x5_clk_usb* to_at91sam9x5_clk_usb (struct clk_hw*) ;

__attribute__((used)) static void at91sam9n12_clk_usb_disable(struct clk_hw *hw)
{
 struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);

 regmap_update_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS, 0);
}
