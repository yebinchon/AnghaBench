
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASID_MASK ;
 unsigned long TLB_ENTRY_SIZE_MASK ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_mmu_entryhi () ;
 int read_mmu_index () ;
 int restore_asid_inv_utlb (int,int) ;
 int sync_is () ;
 int tlb_invalid_indexed () ;
 int tlb_probe () ;
 int write_mmu_entryhi (unsigned long) ;

void flush_tlb_one(unsigned long addr)
{
 addr &= TLB_ENTRY_SIZE_MASK;





 {
 int oldpid, idx;
 unsigned long flags;

 local_irq_save(flags);
 oldpid = read_mmu_entryhi() & ASID_MASK;
 write_mmu_entryhi(addr | oldpid);
 tlb_probe();
 idx = read_mmu_index();
 if (idx >= 0)
  tlb_invalid_indexed();

 restore_asid_inv_utlb(oldpid, oldpid);
 local_irq_restore(flags);
 }

}
