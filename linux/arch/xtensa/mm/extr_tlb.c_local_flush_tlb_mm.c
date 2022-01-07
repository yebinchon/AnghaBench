
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu; void** asid; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;


 void* NO_CONTEXT ;
 int activate_context (struct mm_struct*,int) ;
 TYPE_2__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int smp_processor_id () ;

void local_flush_tlb_mm(struct mm_struct *mm)
{
 int cpu = smp_processor_id();

 if (mm == current->active_mm) {
  unsigned long flags;
  local_irq_save(flags);
  mm->context.asid[cpu] = NO_CONTEXT;
  activate_context(mm, cpu);
  local_irq_restore(flags);
 } else {
  mm->context.asid[cpu] = NO_CONTEXT;
  mm->context.cpu = -1;
 }
}
