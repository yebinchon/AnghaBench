
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsize; scalar_t__ tlbsizeftlbsets; } ;


 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int UNIQUE_ENTRYHI (int) ;
 TYPE_1__ current_cpu_data ;
 int flush_micro_tlb () ;
 int htw_start () ;
 int htw_stop () ;
 int local_flush_tlb_all () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtc0_tlbw_hazard () ;
 int read_c0_entryhi () ;
 int read_c0_index () ;
 int tlb_probe () ;
 int tlb_probe_hazard () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (int) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;

void local_flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 unsigned long size, flags;

 local_irq_save(flags);
 size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
 size = (size + 1) >> 1;
 if (size <= (current_cpu_data.tlbsizeftlbsets ?
       current_cpu_data.tlbsize / 8 :
       current_cpu_data.tlbsize / 2)) {
  int pid = read_c0_entryhi();

  start &= (PAGE_MASK << 1);
  end += ((PAGE_SIZE << 1) - 1);
  end &= (PAGE_MASK << 1);
  htw_stop();

  while (start < end) {
   int idx;

   write_c0_entryhi(start);
   start += (PAGE_SIZE << 1);
   mtc0_tlbw_hazard();
   tlb_probe();
   tlb_probe_hazard();
   idx = read_c0_index();
   write_c0_entrylo0(0);
   write_c0_entrylo1(0);
   if (idx < 0)
    continue;

   write_c0_entryhi(UNIQUE_ENTRYHI(idx));
   mtc0_tlbw_hazard();
   tlb_write_indexed();
  }
  tlbw_use_hazard();
  write_c0_entryhi(pid);
  htw_start();
 } else {
  local_flush_tlb_all();
 }
 flush_micro_tlb();
 local_irq_restore(flags);
}
