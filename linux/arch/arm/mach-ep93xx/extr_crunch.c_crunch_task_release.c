
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int crunchstate; } ;


 int * crunch_owner ;
 int local_irq_disable () ;
 int local_irq_enable () ;

void crunch_task_release(struct thread_info *thread)
{
 local_irq_disable();
 if (crunch_owner == &thread->crunchstate)
  crunch_owner = ((void*)0);
 local_irq_enable();
}
