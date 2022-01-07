
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtlb_cache_slot ;
 int local_irq_enable () ;
 int sh64_teardown_tlb_slot (int ) ;

__attribute__((used)) static inline void sh64_teardown_dtlb_cache_slot(void)
{
 sh64_teardown_tlb_slot(dtlb_cache_slot);
 local_irq_enable();
}
