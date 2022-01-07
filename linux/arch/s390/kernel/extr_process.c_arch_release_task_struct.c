
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int guarded_storage_release (struct task_struct*) ;
 int runtime_instr_release (struct task_struct*) ;

void arch_release_task_struct(struct task_struct *tsk)
{
 runtime_instr_release(tsk);
 guarded_storage_release(tsk);
}
