
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rmii_reset_reg {int mask; scalar_t__ reg; } ;
struct TYPE_2__ {int lock; scalar_t__ base; struct rmii_reset_reg* rmii_resets; } ;


 int MAX_SOC_EMACS ;
 TYPE_1__ dscr ;
 int dscr_write (scalar_t__,int) ;
 int soc_readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dscr_rmii_reset(int id, int assert)
{
 struct rmii_reset_reg *r;
 unsigned long flags;
 u32 val;

 if (id < 0 || id >= MAX_SOC_EMACS)
  return;

 r = &dscr.rmii_resets[id];
 if (r->mask == 0)
  return;

 spin_lock_irqsave(&dscr.lock, flags);

 val = soc_readl(dscr.base + r->reg);
 if (assert)
  dscr_write(r->reg, val | r->mask);
 else
  dscr_write(r->reg, val & ~(r->mask));

 spin_unlock_irqrestore(&dscr.lock, flags);
}
