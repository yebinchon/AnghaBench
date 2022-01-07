
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 int PFN_PHYS (unsigned long) ;
 int cond_resched () ;
 int free_reserved_page (int ) ;
 unsigned long jiffies ;
 int pfn_to_page (unsigned long) ;
 int pr_info (char*,int ,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void fadump_free_reserved_memory(unsigned long start_pfn,
     unsigned long end_pfn)
{
 unsigned long pfn;
 unsigned long time_limit = jiffies + HZ;

 pr_info("freeing reserved memory (0x%llx - 0x%llx)\n",
  PFN_PHYS(start_pfn), PFN_PHYS(end_pfn));

 for (pfn = start_pfn; pfn < end_pfn; pfn++) {
  free_reserved_page(pfn_to_page(pfn));

  if (time_after(jiffies, time_limit)) {
   cond_resched();
   time_limit = jiffies + HZ;
  }
 }
}
