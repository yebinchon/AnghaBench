
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thread_info {int flags; } ;
struct seccomp_data {int arch; long nr; int * args; int instruction_pointer; } ;
struct pt_regs {long orig_ax; int bp; int di; int si; int dx; int cx; int bx; int r9; int r8; int r10; int ip; } ;


 int AUDIT_ARCH_I386 ;
 int AUDIT_ARCH_X86_64 ;
 int BUG_ON (int) ;
 int CONFIG_DEBUG_ENTRY ;
 scalar_t__ IS_ENABLED (int ) ;
 int READ_ONCE (int ) ;
 int TIF_SYSCALL_TRACEPOINT ;
 int _TIF_SECCOMP ;
 int _TIF_SYSCALL_EMU ;
 int _TIF_SYSCALL_TRACE ;
 unsigned long __secure_computing (struct seccomp_data*) ;
 int current ;
 struct thread_info* current_thread_info () ;
 int do_audit_syscall_entry (struct pt_regs*,int) ;
 scalar_t__ in_ia32_syscall () ;
 struct pt_regs* task_pt_regs (int ) ;
 int test_thread_flag (int ) ;
 int trace_sys_enter (struct pt_regs*,long) ;
 unsigned long tracehook_report_syscall_entry (struct pt_regs*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static long syscall_trace_enter(struct pt_regs *regs)
{
 u32 arch = in_ia32_syscall() ? AUDIT_ARCH_I386 : AUDIT_ARCH_X86_64;

 struct thread_info *ti = current_thread_info();
 unsigned long ret = 0;
 u32 work;

 if (IS_ENABLED(CONFIG_DEBUG_ENTRY))
  BUG_ON(regs != task_pt_regs(current));

 work = READ_ONCE(ti->flags);

 if (work & (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_EMU)) {
  ret = tracehook_report_syscall_entry(regs);
  if (ret || (work & _TIF_SYSCALL_EMU))
   return -1L;
 }
 if (unlikely(test_thread_flag(TIF_SYSCALL_TRACEPOINT)))
  trace_sys_enter(regs, regs->orig_ax);

 do_audit_syscall_entry(regs, arch);

 return ret ?: regs->orig_ax;
}
