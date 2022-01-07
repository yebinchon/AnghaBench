
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_apbc {int flags; scalar_t__ lock; int base; } ;


 unsigned long APBC_APBCLK ;
 unsigned long APBC_FNCLK ;
 unsigned long APBC_POWER ;
 int APBC_POWER_CTRL ;
 unsigned long readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_apbc* to_clk_apbc (struct clk_hw*) ;
 int udelay (int) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static void clk_apbc_unprepare(struct clk_hw *hw)
{
 struct clk_apbc *apbc = to_clk_apbc(hw);
 unsigned long data;
 unsigned long flags = 0;

 if (apbc->lock)
  spin_lock_irqsave(apbc->lock, flags);

 data = readl_relaxed(apbc->base);
 if (apbc->flags & APBC_POWER_CTRL)
  data &= ~APBC_POWER;
 data &= ~APBC_FNCLK;
 writel_relaxed(data, apbc->base);

 if (apbc->lock)
  spin_unlock_irqrestore(apbc->lock, flags);

 udelay(10);

 if (apbc->lock)
  spin_lock_irqsave(apbc->lock, flags);

 data = readl_relaxed(apbc->base);
 data &= ~APBC_APBCLK;
 writel_relaxed(data, apbc->base);

 if (apbc->lock)
  spin_unlock_irqrestore(apbc->lock, flags);
}
