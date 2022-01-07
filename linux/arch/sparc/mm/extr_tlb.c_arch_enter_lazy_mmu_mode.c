
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_batch {int active; } ;


 struct tlb_batch* this_cpu_ptr (int *) ;
 int tlb_batch ;

void arch_enter_lazy_mmu_mode(void)
{
 struct tlb_batch *tb = this_cpu_ptr(&tlb_batch);

 tb->active = 1;
}
