
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MMU_PAGE_ASSOC_BIT ;
 unsigned long MMU_UTLB_ADDRESS_ARRAY ;
 int __raw_writel (unsigned long,unsigned long) ;
 int back_to_cached () ;
 int jump_to_uncached () ;

void local_flush_tlb_one(unsigned long asid, unsigned long page)
{
 unsigned long addr, data;







 addr = MMU_UTLB_ADDRESS_ARRAY | MMU_PAGE_ASSOC_BIT;
 data = page | asid;
 jump_to_uncached();
 __raw_writel(data, addr);
 back_to_cached();
}
