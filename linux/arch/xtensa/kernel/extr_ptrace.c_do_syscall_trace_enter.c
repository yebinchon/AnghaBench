
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int syscall; } ;


 int NO_SYSCALL ;
 int TIF_SYSCALL_TRACE ;
 int TIF_SYSCALL_TRACEPOINT ;
 int current ;
 int syscall_get_nr (int ,struct pt_regs*) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_sys_enter (struct pt_regs*,int ) ;
 scalar_t__ tracehook_report_syscall_entry (struct pt_regs*) ;

void do_syscall_trace_enter(struct pt_regs *regs)
{
 if (test_thread_flag(TIF_SYSCALL_TRACE) &&
     tracehook_report_syscall_entry(regs))
  regs->syscall = NO_SYSCALL;

 if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
  trace_sys_enter(regs, syscall_get_nr(current, regs));
}
