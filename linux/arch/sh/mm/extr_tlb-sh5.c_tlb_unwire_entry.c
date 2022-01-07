
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long long* dtlb_entries ;
 int dtlb_entry ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sh64_put_wired_dtlb_entry (unsigned long long) ;
 int sh64_teardown_tlb_slot (unsigned long long) ;

void tlb_unwire_entry(void)
{
 unsigned long long entry;
 unsigned long flags;

 BUG_ON(!dtlb_entry);

 local_irq_save(flags);
 entry = dtlb_entries[dtlb_entry--];

 sh64_teardown_tlb_slot(entry);
 sh64_put_wired_dtlb_entry(entry);

 local_irq_restore(flags);
}
