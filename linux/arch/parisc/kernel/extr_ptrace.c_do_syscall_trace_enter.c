
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pt_regs {unsigned long* gr; } ;


 unsigned long ENOSYS ;
 int TIF_SYSCALL_TRACE ;
 int TIF_SYSCALL_TRACEPOINT ;
 int audit_syscall_entry (int,int,int,int,int) ;
 int is_compat_task () ;
 int secure_computing (int *) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_sys_enter (struct pt_regs*,unsigned long) ;
 int tracehook_report_syscall_entry (struct pt_regs*) ;
 scalar_t__ unlikely (scalar_t__) ;

long do_syscall_trace_enter(struct pt_regs *regs)
{
 if (test_thread_flag(TIF_SYSCALL_TRACE)) {
  int rc = tracehook_report_syscall_entry(regs);





  regs->gr[28] = -ENOSYS;

  if (rc) {
   regs->gr[20] = -1UL;
   return -1;
  }
 }


 if (secure_computing(((void*)0)) == -1)
  return -1;
  audit_syscall_entry(regs->gr[20] & 0xffffffff,
   regs->gr[26] & 0xffffffff,
   regs->gr[25] & 0xffffffff,
   regs->gr[24] & 0xffffffff,
   regs->gr[23] & 0xffffffff);





 return (int) ((u32) regs->gr[20]);
}
