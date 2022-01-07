
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long DEBUGCTLMSR_BTF ;
 int TIF_BLOCKSTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct task_struct* current ;
 unsigned long get_debugctlmsr () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int update_debugctlmsr (unsigned long) ;

void set_task_blockstep(struct task_struct *task, bool on)
{
 unsigned long debugctl;
 local_irq_disable();
 debugctl = get_debugctlmsr();
 if (on) {
  debugctl |= DEBUGCTLMSR_BTF;
  set_tsk_thread_flag(task, TIF_BLOCKSTEP);
 } else {
  debugctl &= ~DEBUGCTLMSR_BTF;
  clear_tsk_thread_flag(task, TIF_BLOCKSTEP);
 }
 if (task == current)
  update_debugctlmsr(debugctl);
 local_irq_enable();
}
