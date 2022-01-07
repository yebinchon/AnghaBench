
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;


 int BUG_ON (int ) ;
 int release_vm86_irqs (struct task_struct*) ;

void release_thread(struct task_struct *dead_task)
{
 BUG_ON(dead_task->mm);
 release_vm86_irqs(dead_task);
}
