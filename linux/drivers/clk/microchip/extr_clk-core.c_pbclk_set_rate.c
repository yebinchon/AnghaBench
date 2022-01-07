
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pic32_periph_clk {int ctrl_reg; TYPE_1__* core; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int reg_lock; } ;


 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int EBUSY ;
 int LOCK_TIMEOUT_US ;
 int PB_DIV_MASK ;
 int PB_DIV_READY ;
 struct pic32_periph_clk* clkhw_to_pbclk (struct clk_hw*) ;
 int pbclk_read_pbdiv (struct pic32_periph_clk*) ;
 int pic32_syskey_unlock () ;
 int readl (int ) ;
 int readl_poll_timeout (int ,int,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int pbclk_set_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long parent_rate)
{
 struct pic32_periph_clk *pb = clkhw_to_pbclk(hw);
 unsigned long flags;
 u32 v, div;
 int err;


 err = readl_poll_timeout(pb->ctrl_reg, v, v & PB_DIV_READY,
     1, LOCK_TIMEOUT_US);
 if (err)
  return err;


 div = DIV_ROUND_CLOSEST(parent_rate, rate);

 spin_lock_irqsave(&pb->core->reg_lock, flags);


 v = readl(pb->ctrl_reg);
 v &= ~PB_DIV_MASK;
 v |= (div - 1);

 pic32_syskey_unlock();

 writel(v, pb->ctrl_reg);

 spin_unlock_irqrestore(&pb->core->reg_lock, flags);


 err = readl_poll_timeout(pb->ctrl_reg, v, v & PB_DIV_READY,
     1, LOCK_TIMEOUT_US);
 if (err)
  return err;


 return (pbclk_read_pbdiv(pb) == div) ? 0 : -EBUSY;
}
