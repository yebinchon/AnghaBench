
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct pic32_sys_clk {size_t* parent_map; int mux_reg; TYPE_1__* core; int slew_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int reg_lock; } ;


 int EBUSY ;
 int LOCK_TIMEOUT_US ;
 int OSC_CUR_MASK ;
 int OSC_CUR_SHIFT ;
 int OSC_NEW_MASK ;
 int OSC_NEW_SHIFT ;
 int OSC_SWEN ;
 int PIC32_SET (int ) ;
 int clk_hw_get_name (struct clk_hw*) ;
 struct pic32_sys_clk* clkhw_to_sys_clk (struct clk_hw*) ;
 int cpu_nop5 () ;
 int cpu_relax () ;
 int pic32_syskey_unlock () ;
 int pr_err (char*,int ,int,int) ;
 int readl (int ) ;
 int readl_poll_timeout_atomic (int ,int,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int sclk_set_parent(struct clk_hw *hw, u8 index)
{
 struct pic32_sys_clk *sclk = clkhw_to_sys_clk(hw);
 unsigned long flags;
 u32 nosc, cosc, v;
 int err;

 spin_lock_irqsave(&sclk->core->reg_lock, flags);


 nosc = sclk->parent_map ? sclk->parent_map[index] : index;


 v = readl(sclk->mux_reg);
 v &= ~(OSC_NEW_MASK << OSC_NEW_SHIFT);
 v |= nosc << OSC_NEW_SHIFT;

 pic32_syskey_unlock();

 writel(v, sclk->mux_reg);


 writel(OSC_SWEN, PIC32_SET(sclk->mux_reg));
 cpu_relax();


 cpu_nop5();


 err = readl_poll_timeout_atomic(sclk->slew_reg, v,
     !(v & OSC_SWEN), 1, LOCK_TIMEOUT_US);

 spin_unlock_irqrestore(&sclk->core->reg_lock, flags);







 cosc = (readl(sclk->mux_reg) >> OSC_CUR_SHIFT) & OSC_CUR_MASK;
 if (cosc != nosc) {
  pr_err("%s: err, failed to set_parent() to %d, current %d\n",
         clk_hw_get_name(hw), nosc, cosc);
  err = -EBUSY;
 }

 return err;
}
