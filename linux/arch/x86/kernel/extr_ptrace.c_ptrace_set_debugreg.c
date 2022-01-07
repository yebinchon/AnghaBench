
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {unsigned long debugreg6; unsigned long ptrace_dr7; } ;
struct task_struct {struct thread_struct thread; } ;


 int EIO ;
 int HBP_NUM ;
 int ptrace_set_breakpoint_addr (struct task_struct*,int,unsigned long) ;
 int ptrace_write_dr7 (struct task_struct*,unsigned long) ;

__attribute__((used)) static int ptrace_set_debugreg(struct task_struct *tsk, int n,
          unsigned long val)
{
 struct thread_struct *thread = &tsk->thread;

 int rc = -EIO;

 if (n < HBP_NUM) {
  rc = ptrace_set_breakpoint_addr(tsk, n, val);
 } else if (n == 6) {
  thread->debugreg6 = val;
  rc = 0;
 } else if (n == 7) {
  rc = ptrace_write_dr7(tsk, val);
  if (!rc)
   thread->ptrace_dr7 = val;
 }
 return rc;
}
