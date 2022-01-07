
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct task_struct {struct thread_info* stack; } ;
struct TYPE_2__ {struct task_struct* task; } ;


 TYPE_1__* _switch (struct thread_info*,struct thread_info*) ;
 struct thread_info** current_thread_info_set ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ lwa_flag ;
 size_t smp_processor_id () ;

struct task_struct *__switch_to(struct task_struct *old,
    struct task_struct *new)
{
 struct task_struct *last;
 struct thread_info *new_ti, *old_ti;
 unsigned long flags;

 local_irq_save(flags);





 new_ti = new->stack;
 old_ti = old->stack;

 lwa_flag = 0;

 current_thread_info_set[smp_processor_id()] = new_ti;
 last = (_switch(old_ti, new_ti))->task;

 local_irq_restore(flags);

 return last;
}
