
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* regs; } ;
typedef enum ptrace_syscall_dir { ____Placeholder_ptrace_syscall_dir } ptrace_syscall_dir ;


 int PTRACE_SYSCALL_EXIT ;
 int forget_syscall (struct pt_regs*) ;
 scalar_t__ is_compat_task () ;
 scalar_t__ tracehook_report_syscall_entry (struct pt_regs*) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int ) ;

__attribute__((used)) static void tracehook_report_syscall(struct pt_regs *regs,
         enum ptrace_syscall_dir dir)
{
 int regno;
 unsigned long saved_reg;





 regno = (is_compat_task() ? 12 : 7);
 saved_reg = regs->regs[regno];
 regs->regs[regno] = dir;

 if (dir == PTRACE_SYSCALL_EXIT)
  tracehook_report_syscall_exit(regs, 0);
 else if (tracehook_report_syscall_entry(regs))
  forget_syscall(regs);

 regs->regs[regno] = saved_reg;
}
