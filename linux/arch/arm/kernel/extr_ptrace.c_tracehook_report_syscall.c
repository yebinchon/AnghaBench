
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ARM_ip; } ;
typedef enum ptrace_syscall_dir { ____Placeholder_ptrace_syscall_dir } ptrace_syscall_dir ;
struct TYPE_2__ {int syscall; } ;


 int PTRACE_SYSCALL_EXIT ;
 TYPE_1__* current_thread_info () ;
 scalar_t__ tracehook_report_syscall_entry (struct pt_regs*) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int ) ;

__attribute__((used)) static void tracehook_report_syscall(struct pt_regs *regs,
        enum ptrace_syscall_dir dir)
{
 unsigned long ip;





 ip = regs->ARM_ip;
 regs->ARM_ip = dir;

 if (dir == PTRACE_SYSCALL_EXIT)
  tracehook_report_syscall_exit(regs, 0);
 else if (tracehook_report_syscall_entry(regs))
  current_thread_info()->syscall = -1;

 regs->ARM_ip = ip;
}
