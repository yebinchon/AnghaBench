
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct devstate_stat_reg {int shift; int nbits; int start_id; int enable; int disable; scalar_t__ reg; } ;
struct devstate_info {struct devstate_stat_reg* stat; struct devstate_ctl_reg* ctl; } ;
struct devstate_ctl_reg {int shift; int nbits; int start_id; int enable; int disable; scalar_t__ reg; int enable_only; } ;
typedef enum dscr_devstate_t { ____Placeholder_dscr_devstate_t } dscr_devstate_t ;
struct TYPE_2__ {scalar_t__ base; int lock; struct devstate_info* devstate_info; } ;




 int MAX_DEVSTATE_IDS ;
 TYPE_1__ dscr ;
 int dscr_write (scalar_t__,int) ;
 int soc_readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dscr_set_devstate(int id, enum dscr_devstate_t state)
{
 struct devstate_ctl_reg *ctl;
 struct devstate_stat_reg *stat;
 struct devstate_info *info;
 u32 ctl_val, val;
 int ctl_shift, ctl_mask;
 unsigned long flags;

 if (!dscr.base)
  return;

 if (id < 0 || id >= MAX_DEVSTATE_IDS)
  return;

 info = &dscr.devstate_info[id];
 ctl = info->ctl;
 stat = info->stat;

 if (ctl == ((void*)0))
  return;

 ctl_shift = ctl->shift + ctl->nbits * (id - ctl->start_id);
 ctl_mask = ((1 << ctl->nbits) - 1) << ctl_shift;

 switch (state) {
 case 128:
  ctl_val = ctl->enable << ctl_shift;
  break;
 case 129:
  if (ctl->enable_only)
   return;
  ctl_val = ctl->disable << ctl_shift;
  break;
 default:
  return;
 }

 spin_lock_irqsave(&dscr.lock, flags);

 val = soc_readl(dscr.base + ctl->reg);
 val &= ~ctl_mask;
 val |= ctl_val;

 dscr_write(ctl->reg, val);

 spin_unlock_irqrestore(&dscr.lock, flags);

 if (!stat)
  return;

 ctl_shift = stat->shift + stat->nbits * (id - stat->start_id);

 if (state == 128)
  ctl_val = stat->enable;
 else
  ctl_val = stat->disable;

 do {
  val = soc_readl(dscr.base + stat->reg);
  val >>= ctl_shift;
  val &= ((1 << stat->nbits) - 1);
 } while (val != ctl_val);
}
