
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_device {int en_bit; int en_reg; } ;


 int BIT (int ) ;
 int readl (int ) ;
 struct clk_device* to_clk_device (struct clk_hw*) ;

__attribute__((used)) static int vt8500_dclk_is_enabled(struct clk_hw *hw)
{
 struct clk_device *cdev = to_clk_device(hw);
 u32 en_val = (readl(cdev->en_reg) & BIT(cdev->en_bit));

 return en_val ? 1 : 0;
}
