
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pr_debug (char*,unsigned long) ;
 int pte_val (int ) ;
 int replace_tlb_one_pid (unsigned long,unsigned long,int ) ;

__attribute__((used)) static void reload_tlb_one_pid(unsigned long addr, unsigned long mmu_pid, pte_t pte)
{
 pr_debug("Reload tlb-entry for vaddr=%#lx\n", addr);

 replace_tlb_one_pid(addr, mmu_pid, pte_val(pte));
}
