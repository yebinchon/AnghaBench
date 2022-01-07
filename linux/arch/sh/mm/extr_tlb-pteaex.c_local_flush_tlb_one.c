
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMU_ITLB_ADDRESS_ARRAY ;
 int MMU_ITLB_ADDRESS_ARRAY2 ;
 int MMU_PAGE_ASSOC_BIT ;
 int MMU_UTLB_ADDRESS_ARRAY ;
 int MMU_UTLB_ADDRESS_ARRAY2 ;
 int __raw_writel (unsigned long,int) ;
 int back_to_cached () ;
 int jump_to_uncached () ;

void local_flush_tlb_one(unsigned long asid, unsigned long page)
{
 jump_to_uncached();
 __raw_writel(page, MMU_UTLB_ADDRESS_ARRAY | MMU_PAGE_ASSOC_BIT);
 __raw_writel(asid, MMU_UTLB_ADDRESS_ARRAY2 | MMU_PAGE_ASSOC_BIT);
 __raw_writel(page, MMU_ITLB_ADDRESS_ARRAY | MMU_PAGE_ASSOC_BIT);
 __raw_writel(asid, MMU_ITLB_ADDRESS_ARRAY2 | MMU_PAGE_ASSOC_BIT);
 back_to_cached();
}
