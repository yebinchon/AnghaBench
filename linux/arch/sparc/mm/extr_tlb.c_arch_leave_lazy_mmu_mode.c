
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_batch {scalar_t__ active; scalar_t__ tlb_nr; } ;


 int flush_tlb_pending () ;
 struct tlb_batch* this_cpu_ptr (int *) ;
 int tlb_batch ;

void arch_leave_lazy_mmu_mode(void)
{
 struct tlb_batch *tb = this_cpu_ptr(&tlb_batch);

 if (tb->tlb_nr)
  flush_tlb_pending();
 tb->active = 0;
}
