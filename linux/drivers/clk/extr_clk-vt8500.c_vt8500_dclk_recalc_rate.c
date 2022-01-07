
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_device {int div_mask; int div_reg; } ;


 int BIT (int) ;
 int readl (int ) ;
 struct clk_device* to_clk_device (struct clk_hw*) ;

__attribute__((used)) static unsigned long vt8500_dclk_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct clk_device *cdev = to_clk_device(hw);
 u32 div = readl(cdev->div_reg) & cdev->div_mask;


 if ((cdev->div_mask == 0x3F) && (div & BIT(5)))
  div = 64 * (div & 0x1f);


 if (div == 0)
  div = (cdev->div_mask + 1);

 return parent_rate / div;
}
