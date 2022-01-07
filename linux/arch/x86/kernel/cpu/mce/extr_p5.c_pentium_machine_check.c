
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int MSR_IA32_P5_MC_ADDR ;
 int MSR_IA32_P5_MC_TYPE ;
 int TAINT_MACHINE_CHECK ;
 int add_taint (int ,int ) ;
 int ist_enter (struct pt_regs*) ;
 int ist_exit (struct pt_regs*) ;
 int pr_emerg (char*,int ,...) ;
 int rdmsr (int ,int,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void pentium_machine_check(struct pt_regs *regs, long error_code)
{
 u32 loaddr, hi, lotype;

 ist_enter(regs);

 rdmsr(MSR_IA32_P5_MC_ADDR, loaddr, hi);
 rdmsr(MSR_IA32_P5_MC_TYPE, lotype, hi);

 pr_emerg("CPU#%d: Machine Check Exception:  0x%8X (type 0x%8X).\n",
   smp_processor_id(), loaddr, lotype);

 if (lotype & (1<<5)) {
  pr_emerg("CPU#%d: Possible thermal failure (CPU on fire ?).\n",
    smp_processor_id());
 }

 add_taint(TAINT_MACHINE_CHECK, LOCKDEP_NOW_UNRELIABLE);

 ist_exit(regs);
}
