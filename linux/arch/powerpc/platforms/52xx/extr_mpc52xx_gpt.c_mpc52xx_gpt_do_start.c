
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mpc52xx_gpt_priv {int wdt_mode; int lock; TYPE_1__* regs; scalar_t__ ipb_freq; } ;
struct TYPE_2__ {int mode; int count; } ;


 int EBUSY ;
 int EINVAL ;
 int MPC52xx_GPT_IS_WDT ;
 int MPC52xx_GPT_MODE_CONTINUOUS ;
 int MPC52xx_GPT_MODE_COUNTER_ENABLE ;
 int MPC52xx_GPT_MODE_IRQ_EN ;
 int MPC52xx_GPT_MODE_MS_GPIO ;
 int MPC52xx_GPT_MODE_MS_MASK ;
 int MPC52xx_GPT_MODE_WDT_EN ;
 int clrsetbits_be32 (int *,int,int) ;
 int do_div (int,int) ;
 int out_be32 (int *,int) ;
 int pr_err (char*,int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpc52xx_gpt_do_start(struct mpc52xx_gpt_priv *gpt, u64 period,
    int continuous, int as_wdt)
{
 u32 clear, set;
 u64 clocks;
 u32 prescale;
 unsigned long flags;

 clear = MPC52xx_GPT_MODE_MS_MASK | MPC52xx_GPT_MODE_CONTINUOUS;
 set = MPC52xx_GPT_MODE_MS_GPIO | MPC52xx_GPT_MODE_COUNTER_ENABLE;
 if (as_wdt) {
  clear |= MPC52xx_GPT_MODE_IRQ_EN;
  set |= MPC52xx_GPT_MODE_WDT_EN;
 } else if (continuous)
  set |= MPC52xx_GPT_MODE_CONTINUOUS;





 clocks = period * (u64)gpt->ipb_freq;
 do_div(clocks, 1000000000);


 if (clocks > 0xffffffff)
  return -EINVAL;
 prescale = (clocks >> 16) + 1;
 do_div(clocks, prescale);
 if (clocks > 0xffff) {
  pr_err("calculation error; prescale:%x clocks:%llx\n",
         prescale, clocks);
  return -EINVAL;
 }


 raw_spin_lock_irqsave(&gpt->lock, flags);
 if (as_wdt)
  gpt->wdt_mode |= MPC52xx_GPT_IS_WDT;
 else if ((gpt->wdt_mode & MPC52xx_GPT_IS_WDT) != 0) {
  raw_spin_unlock_irqrestore(&gpt->lock, flags);
  return -EBUSY;
 }
 out_be32(&gpt->regs->count, prescale << 16 | clocks);
 clrsetbits_be32(&gpt->regs->mode, clear, set);
 raw_spin_unlock_irqrestore(&gpt->lock, flags);

 return 0;
}
