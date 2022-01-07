
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int cs; void* ip; } ;
struct mce {int mcgstatus; int cs; void* ip; } ;
struct TYPE_2__ {scalar_t__ rip_msr; } ;


 int MCG_STATUS_EIPV ;
 int MCG_STATUS_RIPV ;
 scalar_t__ MSR_IA32_MCG_STATUS ;
 TYPE_1__ mca_cfg ;
 void* mce_rdmsrl (scalar_t__) ;
 int mce_setup (struct mce*) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

__attribute__((used)) static inline void mce_gather_info(struct mce *m, struct pt_regs *regs)
{
 mce_setup(m);

 m->mcgstatus = mce_rdmsrl(MSR_IA32_MCG_STATUS);
 if (regs) {




  if (m->mcgstatus & (MCG_STATUS_RIPV|MCG_STATUS_EIPV)) {
   m->ip = regs->ip;
   m->cs = regs->cs;






   if (v8086_mode(regs))
    m->cs |= 3;
  }

  if (mca_cfg.rip_msr)
   m->ip = mce_rdmsrl(mca_cfg.rip_msr);
 }
}
