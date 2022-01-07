
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int fpsimd_release_task (struct task_struct*) ;

void arch_release_task_struct(struct task_struct *tsk)
{
 fpsimd_release_task(tsk);
}
