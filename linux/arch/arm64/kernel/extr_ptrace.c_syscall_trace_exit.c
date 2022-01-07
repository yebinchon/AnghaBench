
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int PTRACE_SYSCALL_EXIT ;
 int TIF_SYSCALL_TRACE ;
 int TIF_SYSCALL_TRACEPOINT ;
 int audit_syscall_exit (struct pt_regs*) ;
 int regs_return_value (struct pt_regs*) ;
 int rseq_syscall (struct pt_regs*) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_sys_exit (struct pt_regs*,int ) ;
 int tracehook_report_syscall (struct pt_regs*,int ) ;

void syscall_trace_exit(struct pt_regs *regs)
{
 audit_syscall_exit(regs);

 if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
  trace_sys_exit(regs, regs_return_value(regs));

 if (test_thread_flag(TIF_SYSCALL_TRACE))
  tracehook_report_syscall(regs, PTRACE_SYSCALL_EXIT);

 rseq_syscall(regs);
}
