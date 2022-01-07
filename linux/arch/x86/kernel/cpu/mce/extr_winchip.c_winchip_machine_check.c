
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int TAINT_MACHINE_CHECK ;
 int add_taint (int ,int ) ;
 int ist_enter (struct pt_regs*) ;
 int ist_exit (struct pt_regs*) ;
 int pr_emerg (char*) ;

__attribute__((used)) static void winchip_machine_check(struct pt_regs *regs, long error_code)
{
 ist_enter(regs);

 pr_emerg("CPU0: Machine Check Exception.\n");
 add_taint(TAINT_MACHINE_CHECK, LOCKDEP_NOW_UNRELIABLE);

 ist_exit(regs);
}
