
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int switch_mm_irqs_off (struct mm_struct*,struct mm_struct*,struct task_struct*) ;

void switch_mm(struct mm_struct *prev, struct mm_struct *next,
        struct task_struct *tsk)
{
 unsigned long flags;

 local_irq_save(flags);
 switch_mm_irqs_off(prev, next, tsk);
 local_irq_restore(flags);
}
