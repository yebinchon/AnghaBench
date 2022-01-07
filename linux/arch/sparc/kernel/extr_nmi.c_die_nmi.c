
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int DIE_NMIWATCHDOG ;
 scalar_t__ NOTIFY_STOP ;
 int SIGINT ;
 int WARN (int,char*,int) ;
 scalar_t__ notify_die (int ,char const*,struct pt_regs*,int ,int ,int ) ;
 int panic (char*,int) ;
 scalar_t__ panic_on_oops ;
 int pt_regs_trap_type (struct pt_regs*) ;
 int smp_processor_id () ;

__attribute__((used)) static void die_nmi(const char *str, struct pt_regs *regs, int do_panic)
{
 int this_cpu = smp_processor_id();

 if (notify_die(DIE_NMIWATCHDOG, str, regs, 0,
         pt_regs_trap_type(regs), SIGINT) == NOTIFY_STOP)
  return;

 if (do_panic || panic_on_oops)
  panic("Watchdog detected hard LOCKUP on cpu %d", this_cpu);
 else
  WARN(1, "Watchdog detected hard LOCKUP on cpu %d", this_cpu);
}
