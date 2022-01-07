
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsizevtlb; int tlbsizeftlbsets; int tlbsize; } ;


 unsigned long UNIQUE_ENTRYHI (int) ;
 scalar_t__ cpu_has_tlbinv ;
 TYPE_1__ current_cpu_data ;
 int flush_micro_tlb () ;
 int htw_start () ;
 int htw_stop () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtc0_tlbw_hazard () ;
 int num_wired_entries () ;
 unsigned long read_c0_entryhi () ;
 int tlb_write_indexed () ;
 int tlbinvf () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;
 int write_c0_index (int) ;

void local_flush_tlb_all(void)
{
 unsigned long flags;
 unsigned long old_ctx;
 int entry, ftlbhighset;

 local_irq_save(flags);

 old_ctx = read_c0_entryhi();
 htw_stop();
 write_c0_entrylo0(0);
 write_c0_entrylo1(0);

 entry = num_wired_entries();





 if (cpu_has_tlbinv && !entry) {
  if (current_cpu_data.tlbsizevtlb) {
   write_c0_index(0);
   mtc0_tlbw_hazard();
   tlbinvf();
  }
  ftlbhighset = current_cpu_data.tlbsizevtlb +
   current_cpu_data.tlbsizeftlbsets;
  for (entry = current_cpu_data.tlbsizevtlb;
       entry < ftlbhighset;
       entry++) {
   write_c0_index(entry);
   mtc0_tlbw_hazard();
   tlbinvf();
  }
 } else {
  while (entry < current_cpu_data.tlbsize) {

   write_c0_entryhi(UNIQUE_ENTRYHI(entry));
   write_c0_index(entry);
   mtc0_tlbw_hazard();
   tlb_write_indexed();
   entry++;
  }
 }
 tlbw_use_hazard();
 write_c0_entryhi(old_ctx);
 htw_start();
 flush_micro_tlb();
 local_irq_restore(flags);
}
