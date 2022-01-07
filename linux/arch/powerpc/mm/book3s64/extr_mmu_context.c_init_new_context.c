
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int id; int copros; int active_cpus; int * pmd_frag; int * pte_frag; } ;
struct mm_struct {TYPE_1__ context; } ;


 int atomic_set (int *,int ) ;
 int hash__init_new_context (struct mm_struct*) ;
 int mm_iommu_init (struct mm_struct*) ;
 int radix__init_new_context (struct mm_struct*) ;
 scalar_t__ radix_enabled () ;

int init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{
 int index;

 if (radix_enabled())
  index = radix__init_new_context(mm);
 else
  index = hash__init_new_context(mm);

 if (index < 0)
  return index;

 mm->context.id = index;

 mm->context.pte_frag = ((void*)0);
 mm->context.pmd_frag = ((void*)0);



 atomic_set(&mm->context.active_cpus, 0);
 atomic_set(&mm->context.copros, 0);

 return 0;
}
