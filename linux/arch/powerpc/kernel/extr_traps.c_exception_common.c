
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {int trap_nr; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int arch_irq_disabled_regs (struct pt_regs*) ;
 scalar_t__ arch_irqs_disabled () ;
 TYPE_2__* current ;
 int die (char*,struct pt_regs*,int) ;
 int local_irq_enable () ;
 int show_signal_msg (int,struct pt_regs*,int,unsigned long) ;
 int thread_pkey_regs_save (TYPE_1__*) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static bool exception_common(int signr, struct pt_regs *regs, int code,
         unsigned long addr)
{
 if (!user_mode(regs)) {
  die("Exception in kernel mode", regs, signr);
  return 0;
 }

 show_signal_msg(signr, regs, code, addr);

 if (arch_irqs_disabled() && !arch_irq_disabled_regs(regs))
  local_irq_enable();

 current->thread.trap_nr = code;





 thread_pkey_regs_save(&current->thread);

 return 1;
}
