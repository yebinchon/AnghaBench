
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct pic32_ref_osc {size_t* parent_map; TYPE_1__* core; int ctrl_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int reg_lock; } ;


 int LOCK_TIMEOUT_US ;
 size_t REFO_ACTIVE ;
 size_t REFO_SEL_MASK ;
 size_t REFO_SEL_SHIFT ;
 int clk_hw_get_name (struct clk_hw*) ;
 struct pic32_ref_osc* clkhw_to_refosc (struct clk_hw*) ;
 int pic32_syskey_unlock () ;
 int pr_err (char*,int ) ;
 size_t readl (int ) ;
 int readl_poll_timeout (int ,size_t,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int roclk_set_parent(struct clk_hw *hw, u8 index)
{
 struct pic32_ref_osc *refo = clkhw_to_refosc(hw);
 unsigned long flags;
 u32 v;
 int err;

 if (refo->parent_map)
  index = refo->parent_map[index];


 err = readl_poll_timeout(refo->ctrl_reg, v, !(v & REFO_ACTIVE),
     1, LOCK_TIMEOUT_US);
 if (err) {
  pr_err("%s: poll failed, clk active\n", clk_hw_get_name(hw));
  return err;
 }

 spin_lock_irqsave(&refo->core->reg_lock, flags);

 pic32_syskey_unlock();


 v = readl(refo->ctrl_reg);
 v &= ~(REFO_SEL_MASK << REFO_SEL_SHIFT);
 v |= index << REFO_SEL_SHIFT;

 writel(v, refo->ctrl_reg);

 spin_unlock_irqrestore(&refo->core->reg_lock, flags);

 return 0;
}
