
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long UNIQUE_ENTRYHI (unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtc0_tlbw_hazard () ;
 unsigned int num_wired_entries () ;
 int pagefault_enable () ;
 int preempt_enable () ;
 unsigned long read_c0_entryhi () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;
 int write_c0_index (unsigned int) ;
 int write_c0_wired (unsigned int) ;

void kunmap_coherent(void)
{
 unsigned int wired;
 unsigned long flags, old_ctx;

 local_irq_save(flags);
 old_ctx = read_c0_entryhi();
 wired = num_wired_entries() - 1;
 write_c0_wired(wired);
 write_c0_index(wired);
 write_c0_entryhi(UNIQUE_ENTRYHI(wired));
 write_c0_entrylo0(0);
 write_c0_entrylo1(0);
 mtc0_tlbw_hazard();
 tlb_write_indexed();
 tlbw_use_hazard();
 write_c0_entryhi(old_ctx);
 local_irq_restore(flags);
 pagefault_enable();
 preempt_enable();
}
