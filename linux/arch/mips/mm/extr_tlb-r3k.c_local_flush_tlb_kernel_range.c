
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long tlbsize; } ;


 int KSEG0 ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 TYPE_1__ current_cpu_data ;
 int local_flush_tlb_all () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,unsigned long,unsigned long) ;
 int read_c0_entryhi () ;
 int read_c0_index () ;
 int tlb_probe () ;
 int tlb_write_indexed () ;
 int write_c0_entryhi (int) ;
 int write_c0_entrylo0 (int ) ;

void local_flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 unsigned long size, flags;




 local_irq_save(flags);
 size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
 if (size <= current_cpu_data.tlbsize) {
  int pid = read_c0_entryhi();

  start &= PAGE_MASK;
  end += PAGE_SIZE - 1;
  end &= PAGE_MASK;

  while (start < end) {
   int idx;

   write_c0_entryhi(start);
   start += PAGE_SIZE;
   tlb_probe();
   idx = read_c0_index();
   write_c0_entrylo0(0);
   write_c0_entryhi(KSEG0);
   if (idx < 0)
    continue;
   tlb_write_indexed();
  }
  write_c0_entryhi(pid);
 } else {
  local_flush_tlb_all();
 }
 local_irq_restore(flags);
}
