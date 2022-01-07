
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {struct perf_event** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct perf_event {int dummy; } ;


 unsigned long DR_CONTROL_RESERVED ;
 int HBP_NUM ;
 scalar_t__ IS_ERR (struct perf_event*) ;
 int PTR_ERR (struct perf_event*) ;
 int WARN_ON (int) ;
 int decode_dr7 (unsigned long,int,unsigned int*,unsigned int*) ;
 unsigned long ptrace_get_dr7 (struct perf_event**) ;
 int ptrace_modify_breakpoint (struct perf_event*,unsigned int,unsigned int,int) ;
 struct perf_event* ptrace_register_breakpoint (struct task_struct*,unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static int ptrace_write_dr7(struct task_struct *tsk, unsigned long data)
{
 struct thread_struct *thread = &tsk->thread;
 unsigned long old_dr7;
 bool second_pass = 0;
 int i, rc, ret = 0;

 data &= ~DR_CONTROL_RESERVED;
 old_dr7 = ptrace_get_dr7(thread->ptrace_bps);

restore:
 rc = 0;
 for (i = 0; i < HBP_NUM; i++) {
  unsigned len, type;
  bool disabled = !decode_dr7(data, i, &len, &type);
  struct perf_event *bp = thread->ptrace_bps[i];

  if (!bp) {
   if (disabled)
    continue;

   bp = ptrace_register_breakpoint(tsk,
     len, type, 0, disabled);
   if (IS_ERR(bp)) {
    rc = PTR_ERR(bp);
    break;
   }

   thread->ptrace_bps[i] = bp;
   continue;
  }

  rc = ptrace_modify_breakpoint(bp, len, type, disabled);
  if (rc)
   break;
 }


 if (rc && !WARN_ON(second_pass)) {
  ret = rc;
  data = old_dr7;
  second_pass = 1;
  goto restore;
 }

 return ret;
}
