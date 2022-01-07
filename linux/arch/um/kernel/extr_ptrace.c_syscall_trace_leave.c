
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int regs; } ;
struct TYPE_2__ {int ptrace; } ;


 int PT_DTRACE ;
 int PT_PTRACED ;
 int TIF_SIGPENDING ;
 int TIF_SYSCALL_TRACE ;
 int audit_syscall_exit (struct pt_regs*) ;
 TYPE_1__* current ;
 int send_sigtrap (int *,int ) ;
 int set_thread_flag (int ) ;
 int test_thread_flag (int ) ;
 int tracehook_report_syscall_exit (struct pt_regs*,int ) ;

void syscall_trace_leave(struct pt_regs *regs)
{
 int ptraced = current->ptrace;

 audit_syscall_exit(regs);


 if (ptraced & PT_DTRACE)
  send_sigtrap(&regs->regs, 0);

 if (!test_thread_flag(TIF_SYSCALL_TRACE))
  return;

 tracehook_report_syscall_exit(regs, 0);

 if (ptraced & PT_PTRACED)
  set_thread_flag(TIF_SIGPENDING);
}
