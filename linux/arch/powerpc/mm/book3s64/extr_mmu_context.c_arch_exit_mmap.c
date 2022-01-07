
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {scalar_t__ prtb0; } ;


 int destroy_pagetable_cache (struct mm_struct*) ;
 TYPE_2__* process_tb ;
 scalar_t__ radix_enabled () ;

void arch_exit_mmap(struct mm_struct *mm)
{
 destroy_pagetable_cache(mm);

 if (radix_enabled()) {
  process_tb[mm->context.id].prtb0 = 0;
 }
}
