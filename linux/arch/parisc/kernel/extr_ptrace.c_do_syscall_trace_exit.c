
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * gr; } ;


 int TIF_BLOCKSTEP ;
 int TIF_SINGLESTEP ;
 int TIF_SYSCALL_TRACE ;
 int TIF_SYSCALL_TRACEPOINT ;
 int audit_syscall_exit (struct pt_regs*) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_sys_exit (struct pt_regs*,int ) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int) ;
 scalar_t__ unlikely (scalar_t__) ;

void do_syscall_trace_exit(struct pt_regs *regs)
{
 int stepping = test_thread_flag(TIF_SINGLESTEP) ||
  test_thread_flag(TIF_BLOCKSTEP);

 audit_syscall_exit(regs);






 if (stepping || test_thread_flag(TIF_SYSCALL_TRACE))
  tracehook_report_syscall_exit(regs, stepping);
}
