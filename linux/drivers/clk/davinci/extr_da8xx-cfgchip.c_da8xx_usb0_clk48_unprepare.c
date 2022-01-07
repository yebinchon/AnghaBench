
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_usb0_clk48 {int fck; } ;
struct clk_hw {int dummy; } ;


 int clk_unprepare (int ) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static void da8xx_usb0_clk48_unprepare(struct clk_hw *hw)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);

 clk_unprepare(usb0->fck);
}
