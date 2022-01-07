
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SMP ;
 int IS_ENABLED (int ) ;
 scalar_t__ PAGE_SIZE ;
 int arch_irqs_disabled () ;
 int flush_tlb_all () ;
 int mtsp (unsigned long,int) ;
 unsigned long parisc_tlb_flush_threshold ;
 int pdtlb (unsigned long) ;
 int pitlb (unsigned long) ;
 int purge_tlb_end (unsigned long) ;
 int purge_tlb_start (unsigned long) ;

int __flush_tlb_range(unsigned long sid, unsigned long start,
        unsigned long end)
{
 unsigned long flags;

 if ((!IS_ENABLED(CONFIG_SMP) || !arch_irqs_disabled()) &&
     end - start >= parisc_tlb_flush_threshold) {
  flush_tlb_all();
  return 1;
 }




 while (start < end) {
  purge_tlb_start(flags);
  mtsp(sid, 1);
  pdtlb(start);
  pitlb(start);
  purge_tlb_end(flags);
  start += PAGE_SIZE;
 }
 return 0;
}
