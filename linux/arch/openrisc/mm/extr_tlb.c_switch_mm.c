
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int pgd; } ;


 int * current_pgd ;
 int local_flush_tlb_mm (struct mm_struct*) ;
 size_t smp_processor_id () ;

void switch_mm(struct mm_struct *prev, struct mm_struct *next,
        struct task_struct *next_tsk)
{






 current_pgd[smp_processor_id()] = next->pgd;





 if (prev != next)
  local_flush_tlb_mm(prev);

}
