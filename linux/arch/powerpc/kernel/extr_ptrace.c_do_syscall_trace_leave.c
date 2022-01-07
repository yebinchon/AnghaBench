
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int result; } ;


 int TIF_SINGLESTEP ;
 int TIF_SYSCALL_TRACE ;
 int TIF_SYSCALL_TRACEPOINT ;
 int audit_syscall_exit (struct pt_regs*) ;
 int test_thread_flag (int ) ;
 int trace_sys_exit (struct pt_regs*,int ) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int) ;
 scalar_t__ unlikely (int) ;
 int user_enter () ;

void do_syscall_trace_leave(struct pt_regs *regs)
{
 int step;

 audit_syscall_exit(regs);

 if (unlikely(test_thread_flag(TIF_SYSCALL_TRACEPOINT)))
  trace_sys_exit(regs, regs->result);

 step = test_thread_flag(TIF_SINGLESTEP);
 if (step || test_thread_flag(TIF_SYSCALL_TRACE))
  tracehook_report_syscall_exit(regs, step);

 user_enter();
}
