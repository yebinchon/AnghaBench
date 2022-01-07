
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int msr; } ;
struct TYPE_6__ {int in_nmi; } ;
struct TYPE_5__ {int sreset_irqs; } ;
struct TYPE_4__ {scalar_t__ (* system_reset_exception ) (struct pt_regs*) ;} ;


 int BUG_ON (int) ;
 int CPU_FTR_HVMODE ;
 int KMSG_DUMP_OOPS ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int MSEC_PER_SEC ;
 int MSR_RI ;
 int SIGABRT ;
 int SPRN_HSRR0 ;
 int SPRN_HSRR1 ;
 int TAINT_DIE ;
 int __this_cpu_inc (int ) ;
 int add_taint (int ,int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int crash_fadump (struct pt_regs*,char*) ;
 int crash_kexec (struct pt_regs*) ;
 int crash_kexec_secondary (struct pt_regs*) ;
 scalar_t__ debugger (struct pt_regs*) ;
 int die (char*,struct pt_regs*,int ) ;
 TYPE_3__* get_paca () ;
 int hv_nmi_check_nonrecoverable (struct pt_regs*) ;
 int in_nmi () ;
 TYPE_2__ irq_stat ;
 int kmsg_dump (int ) ;
 int mdelay (int) ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;
 int nmi_enter () ;
 int nmi_exit () ;
 int nmi_panic (struct pt_regs*,char*) ;
 TYPE_1__ ppc_md ;
 scalar_t__ stub1 (struct pt_regs*) ;

void system_reset_exception(struct pt_regs *regs)
{
 unsigned long hsrr0, hsrr1;
 bool nested = in_nmi();
 bool saved_hsrrs = 0;





 if (!nested)
  nmi_enter();
 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  hsrr0 = mfspr(SPRN_HSRR0);
  hsrr1 = mfspr(SPRN_HSRR1);
  saved_hsrrs = 1;
 }

 hv_nmi_check_nonrecoverable(regs);

 __this_cpu_inc(irq_stat.sreset_irqs);


 if (ppc_md.system_reset_exception) {
  if (ppc_md.system_reset_exception(regs))
   goto out;
 }

 if (debugger(regs))
  goto out;

 kmsg_dump(KMSG_DUMP_OOPS);





 crash_fadump(regs, "System Reset");

 crash_kexec(regs);






 crash_kexec_secondary(regs);





 die("System Reset", regs, SIGABRT);

 mdelay(2*MSEC_PER_SEC);
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 nmi_panic(regs, "System Reset");

out:






 if (!(regs->msr & MSR_RI))
  nmi_panic(regs, "Unrecoverable System Reset");

 if (saved_hsrrs) {
  mtspr(SPRN_HSRR0, hsrr0);
  mtspr(SPRN_HSRR1, hsrr1);
 }

 if (!nested)
  nmi_exit();


}
