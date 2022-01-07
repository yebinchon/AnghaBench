
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMU_NTLB_ENTRIES ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned long cpu_asid (unsigned int,int *) ;
 unsigned long get_asid () ;
 int init_mm ;
 int local_flush_tlb_all () ;
 int local_flush_tlb_one (unsigned long,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_asid (unsigned long) ;
 unsigned int smp_processor_id () ;

void local_flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 unsigned int cpu = smp_processor_id();
 unsigned long flags;
 int size;

 local_irq_save(flags);
 size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
 if (size > (MMU_NTLB_ENTRIES/4)) {
  local_flush_tlb_all();
 } else {
  unsigned long asid;
  unsigned long saved_asid = get_asid();

  asid = cpu_asid(cpu, &init_mm);
  start &= PAGE_MASK;
  end += (PAGE_SIZE - 1);
  end &= PAGE_MASK;
  set_asid(asid);
  while (start < end) {
   local_flush_tlb_one(asid, start);
   start += PAGE_SIZE;
  }
  set_asid(saved_asid);
 }
 local_irq_restore(flags);
}
