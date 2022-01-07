
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int ax; } ;


 int _TIF_SINGLESTEP ;
 int _TIF_SYSCALL_EMU ;
 int _TIF_SYSCALL_TRACE ;
 int _TIF_SYSCALL_TRACEPOINT ;
 int audit_syscall_exit (struct pt_regs*) ;
 int trace_sys_exit (struct pt_regs*,int ) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int) ;
 int unlikely (int) ;

__attribute__((used)) static void syscall_slow_exit_work(struct pt_regs *regs, u32 cached_flags)
{
 bool step;

 audit_syscall_exit(regs);

 if (cached_flags & _TIF_SYSCALL_TRACEPOINT)
  trace_sys_exit(regs, regs->ax);







 step = unlikely(
  (cached_flags & (_TIF_SINGLESTEP | _TIF_SYSCALL_EMU))
  == _TIF_SINGLESTEP);
 if (step || cached_flags & _TIF_SYSCALL_TRACE)
  tracehook_report_syscall_exit(regs, step);
}
