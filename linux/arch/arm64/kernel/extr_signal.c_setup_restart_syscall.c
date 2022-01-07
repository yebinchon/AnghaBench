
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * regs; } ;


 int __NR_restart_syscall ;
 int compat_setup_restart_syscall (struct pt_regs*) ;
 scalar_t__ is_compat_task () ;

__attribute__((used)) static void setup_restart_syscall(struct pt_regs *regs)
{
 if (is_compat_task())
  compat_setup_restart_syscall(regs);
 else
  regs->regs[8] = __NR_restart_syscall;
}
