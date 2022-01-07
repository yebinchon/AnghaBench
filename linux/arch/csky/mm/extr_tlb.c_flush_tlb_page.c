
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int ASID_MASK ;
 unsigned long TLB_ENTRY_SIZE_MASK ;
 int cpu_asid (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_mmu_entryhi () ;
 int read_mmu_index () ;
 int restore_asid_inv_utlb (int,int) ;
 int sync_is () ;
 int tlb_invalid_indexed () ;
 int tlb_probe () ;
 int write_mmu_entryhi (unsigned long) ;

void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
{
 int newpid = cpu_asid(vma->vm_mm);

 addr &= TLB_ENTRY_SIZE_MASK;





 {
 int oldpid, idx;
 unsigned long flags;

 local_irq_save(flags);
 oldpid = read_mmu_entryhi() & ASID_MASK;
 write_mmu_entryhi(addr | newpid);
 tlb_probe();
 idx = read_mmu_index();
 if (idx >= 0)
  tlb_invalid_indexed();

 restore_asid_inv_utlb(oldpid, newpid);
 local_irq_restore(flags);
 }

}
