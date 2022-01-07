
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtlb_cache_slot ;
 int local_irq_disable () ;
 int sh64_setup_tlb_slot (int ,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline void
sh64_setup_dtlb_cache_slot(unsigned long eaddr, unsigned long asid,
      unsigned long paddr)
{
 local_irq_disable();
 sh64_setup_tlb_slot(dtlb_cache_slot, eaddr, asid, paddr);
}
