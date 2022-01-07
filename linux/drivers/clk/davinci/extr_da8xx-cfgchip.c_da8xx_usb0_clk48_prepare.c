
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_usb0_clk48 {int fck; } ;
struct clk_hw {int dummy; } ;


 int clk_prepare (int ) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static int da8xx_usb0_clk48_prepare(struct clk_hw *hw)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);





 return clk_prepare(usb0->fck);
}
