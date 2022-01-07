
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt_regs {int* gpr; } ;
struct TYPE_2__ {int flags; } ;


 long ENOSYS ;
 int NR_syscalls ;
 int READ_ONCE (int ) ;
 int TIF_SYSCALL_TRACEPOINT ;
 int _TIF_SYSCALL_EMU ;
 int _TIF_SYSCALL_TRACE ;
 int audit_syscall_entry (int,int,int,int,int) ;
 TYPE_1__* current_thread_info () ;
 scalar_t__ do_seccomp (struct pt_regs*) ;
 int is_32bit_task () ;
 int test_thread_flag (int ) ;
 int trace_sys_enter (struct pt_regs*,int) ;
 int tracehook_report_syscall_entry (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;
 int user_exit () ;

long do_syscall_trace_enter(struct pt_regs *regs)
{
 u32 flags;

 user_exit();

 flags = READ_ONCE(current_thread_info()->flags) &
  (_TIF_SYSCALL_EMU | _TIF_SYSCALL_TRACE);

 if (flags) {
  int rc = tracehook_report_syscall_entry(regs);

  if (unlikely(flags & _TIF_SYSCALL_EMU)) {
   return -1;
  }

  if (rc) {






   goto skip;
  }
 }


 if (do_seccomp(regs))
  return -1;


 if (regs->gpr[0] >= NR_syscalls)
  goto skip;

 if (unlikely(test_thread_flag(TIF_SYSCALL_TRACEPOINT)))
  trace_sys_enter(regs, regs->gpr[0]);







  audit_syscall_entry(regs->gpr[0],
        regs->gpr[3] & 0xffffffff,
        regs->gpr[4] & 0xffffffff,
        regs->gpr[5] & 0xffffffff,
        regs->gpr[6] & 0xffffffff);


 return regs->gpr[0];

skip:




 regs->gpr[3] = -ENOSYS;
 return -1;
}
