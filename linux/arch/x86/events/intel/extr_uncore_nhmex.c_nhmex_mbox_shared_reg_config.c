
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_uncore_extra_reg {int lock; int config; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;


 int EXTRA_REG_NHMEX_M_ZDP_CTL_FVC ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 nhmex_mbox_shared_reg_config(struct intel_uncore_box *box, int idx)
{
 struct intel_uncore_extra_reg *er;
 unsigned long flags;
 u64 config;

 if (idx < EXTRA_REG_NHMEX_M_ZDP_CTL_FVC)
  return box->shared_regs[idx].config;

 er = &box->shared_regs[EXTRA_REG_NHMEX_M_ZDP_CTL_FVC];
 raw_spin_lock_irqsave(&er->lock, flags);
 config = er->config;
 raw_spin_unlock_irqrestore(&er->lock, flags);
 return config;
}
