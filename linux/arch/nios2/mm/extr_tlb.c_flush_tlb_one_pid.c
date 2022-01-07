
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,unsigned long) ;
 int replace_tlb_one_pid (unsigned long,unsigned long,int ) ;

__attribute__((used)) static void flush_tlb_one_pid(unsigned long addr, unsigned long mmu_pid)
{
 pr_debug("Flush tlb-entry for vaddr=%#lx\n", addr);

 replace_tlb_one_pid(addr, mmu_pid, 0);
}
