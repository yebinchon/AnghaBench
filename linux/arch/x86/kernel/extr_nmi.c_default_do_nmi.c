
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int ip; } ;
struct TYPE_4__ {int swallow; int external; int normal; } ;
struct TYPE_3__ {unsigned char (* get_nmi_reason ) () ;} ;


 int NMI_LOCAL ;
 unsigned char NMI_REASON_IOCHK ;
 unsigned char NMI_REASON_MASK ;
 unsigned char NMI_REASON_SERR ;
 int __this_cpu_add (int ,int) ;
 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 int cpu_relax () ;
 int io_check_error (unsigned char,struct pt_regs*) ;
 int last_nmi_rip ;
 int nmi_handle (int ,struct pt_regs*) ;
 int nmi_reason_lock ;
 TYPE_2__ nmi_stats ;
 int pci_serr_error (unsigned char,struct pt_regs*) ;
 int raw_spin_trylock (int *) ;
 int raw_spin_unlock (int *) ;
 int reassert_nmi () ;
 int run_crash_ipi_callback (struct pt_regs*) ;
 unsigned char stub1 () ;
 int swallow_nmi ;
 int unknown_nmi_error (unsigned char,struct pt_regs*) ;
 TYPE_1__ x86_platform ;

__attribute__((used)) static void default_do_nmi(struct pt_regs *regs)
{
 unsigned char reason = 0;
 int handled;
 bool b2b = 0;
 if (regs->ip == __this_cpu_read(last_nmi_rip))
  b2b = 1;
 else
  __this_cpu_write(swallow_nmi, 0);

 __this_cpu_write(last_nmi_rip, regs->ip);

 handled = nmi_handle(NMI_LOCAL, regs);
 __this_cpu_add(nmi_stats.normal, handled);
 if (handled) {
  if (handled > 1)
   __this_cpu_write(swallow_nmi, 1);
  return;
 }
 while (!raw_spin_trylock(&nmi_reason_lock)) {
  run_crash_ipi_callback(regs);
  cpu_relax();
 }

 reason = x86_platform.get_nmi_reason();

 if (reason & NMI_REASON_MASK) {
  if (reason & NMI_REASON_SERR)
   pci_serr_error(reason, regs);
  else if (reason & NMI_REASON_IOCHK)
   io_check_error(reason, regs);







  __this_cpu_add(nmi_stats.external, 1);
  raw_spin_unlock(&nmi_reason_lock);
  return;
 }
 raw_spin_unlock(&nmi_reason_lock);
 if (b2b && __this_cpu_read(swallow_nmi))
  __this_cpu_add(nmi_stats.swallow, 1);
 else
  unknown_nmi_error(reason, regs);
}
