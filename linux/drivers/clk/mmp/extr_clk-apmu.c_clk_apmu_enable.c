
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_apmu {unsigned long enable_mask; scalar_t__ lock; int base; } ;


 unsigned long readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_apmu* to_clk_apmu (struct clk_hw*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int clk_apmu_enable(struct clk_hw *hw)
{
 struct clk_apmu *apmu = to_clk_apmu(hw);
 unsigned long data;
 unsigned long flags = 0;

 if (apmu->lock)
  spin_lock_irqsave(apmu->lock, flags);

 data = readl_relaxed(apmu->base) | apmu->enable_mask;
 writel_relaxed(data, apmu->base);

 if (apmu->lock)
  spin_unlock_irqrestore(apmu->lock, flags);

 return 0;
}
