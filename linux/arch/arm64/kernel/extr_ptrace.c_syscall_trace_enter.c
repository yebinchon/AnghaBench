
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int syscallno; int * regs; int orig_x0; } ;


 int PTRACE_SYSCALL_ENTER ;
 int TIF_SYSCALL_EMU ;
 int TIF_SYSCALL_TRACE ;
 int TIF_SYSCALL_TRACEPOINT ;
 int audit_syscall_entry (int,int ,int ,int ,int ) ;
 int in_syscall (struct pt_regs*) ;
 int secure_computing (int *) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_sys_enter (struct pt_regs*,int) ;
 int tracehook_report_syscall (struct pt_regs*,int ) ;

int syscall_trace_enter(struct pt_regs *regs)
{
 if (test_thread_flag(TIF_SYSCALL_TRACE) ||
  test_thread_flag(TIF_SYSCALL_EMU)) {
  tracehook_report_syscall(regs, PTRACE_SYSCALL_ENTER);
  if (!in_syscall(regs) || test_thread_flag(TIF_SYSCALL_EMU))
   return -1;
 }


 if (secure_computing(((void*)0)) == -1)
  return -1;

 if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
  trace_sys_enter(regs, regs->syscallno);

 audit_syscall_entry(regs->syscallno, regs->orig_x0, regs->regs[1],
       regs->regs[2], regs->regs[3]);

 return regs->syscallno;
}
