
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_device {int lock; int en_reg; int en_bit; } ;


 int BIT (int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_device* to_clk_device (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int vt8500_dclk_enable(struct clk_hw *hw)
{
 struct clk_device *cdev = to_clk_device(hw);
 u32 en_val;
 unsigned long flags = 0;

 spin_lock_irqsave(cdev->lock, flags);

 en_val = readl(cdev->en_reg);
 en_val |= BIT(cdev->en_bit);
 writel(en_val, cdev->en_reg);

 spin_unlock_irqrestore(cdev->lock, flags);
 return 0;
}
