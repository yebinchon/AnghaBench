
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CPU_HAS_MMU_PAGE_ASSOC ;
 int MMU_NTLB_WAYS ;
 unsigned long MMU_PAGE_ASSOC_BIT ;
 unsigned long MMU_TLB_ADDRESS_ARRAY ;
 int __raw_writel (unsigned long,unsigned long) ;
 TYPE_1__ current_cpu_data ;

void local_flush_tlb_one(unsigned long asid, unsigned long page)
{
 unsigned long addr, data;
 int i, ways = MMU_NTLB_WAYS;







 addr = MMU_TLB_ADDRESS_ARRAY | (page & 0x1F000);
 data = (page & 0xfffe0000) | asid;

 if ((current_cpu_data.flags & CPU_HAS_MMU_PAGE_ASSOC)) {
  addr |= MMU_PAGE_ASSOC_BIT;
  ways = 1;
 }

 for (i = 0; i < ways; i++)
  __raw_writel(data, addr + (i << 8));
}
