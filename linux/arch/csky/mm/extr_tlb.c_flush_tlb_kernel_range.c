
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ASID_MASK ;
 int PAGE_SIZE ;
 int TLB_ENTRY_SIZE ;
 unsigned long TLB_ENTRY_SIZE_MASK ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long read_mmu_entryhi () ;
 int read_mmu_index () ;
 int restore_asid_inv_utlb (unsigned long,unsigned long) ;
 int sync_is () ;
 int tlb_invalid_indexed () ;
 int tlb_probe () ;
 int write_mmu_entryhi (unsigned long) ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 start &= TLB_ENTRY_SIZE_MASK;
 end += TLB_ENTRY_SIZE - 1;
 end &= TLB_ENTRY_SIZE_MASK;
 {
 unsigned long flags, oldpid;

 local_irq_save(flags);
 oldpid = read_mmu_entryhi() & ASID_MASK;
 while (start < end) {
  int idx;

  write_mmu_entryhi(start | oldpid);
  start += 2*PAGE_SIZE;
  tlb_probe();
  idx = read_mmu_index();
  if (idx >= 0)
   tlb_invalid_indexed();
 }
 restore_asid_inv_utlb(oldpid, oldpid);
 local_irq_restore(flags);
 }

}
