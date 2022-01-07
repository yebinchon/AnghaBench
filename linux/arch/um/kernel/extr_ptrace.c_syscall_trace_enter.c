
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int regs; } ;


 int TIF_SYSCALL_TRACE ;
 int UPT_SYSCALL_ARG1 (int *) ;
 int UPT_SYSCALL_ARG2 (int *) ;
 int UPT_SYSCALL_ARG3 (int *) ;
 int UPT_SYSCALL_ARG4 (int *) ;
 int UPT_SYSCALL_NR (int *) ;
 int audit_syscall_entry (int ,int ,int ,int ,int ) ;
 int test_thread_flag (int ) ;
 int tracehook_report_syscall_entry (struct pt_regs*) ;

int syscall_trace_enter(struct pt_regs *regs)
{
 audit_syscall_entry(UPT_SYSCALL_NR(&regs->regs),
       UPT_SYSCALL_ARG1(&regs->regs),
       UPT_SYSCALL_ARG2(&regs->regs),
       UPT_SYSCALL_ARG3(&regs->regs),
       UPT_SYSCALL_ARG4(&regs->regs));

 if (!test_thread_flag(TIF_SYSCALL_TRACE))
  return 0;

 return tracehook_report_syscall_entry(regs);
}
