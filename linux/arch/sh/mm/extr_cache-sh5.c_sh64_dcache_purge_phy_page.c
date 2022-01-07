
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_OC_N_SYNBITS ;
 scalar_t__ L1_CACHE_BYTES ;
 unsigned long long MAGIC_PAGE0_START ;
 unsigned long long PAGE_SIZE ;
 int get_asid () ;
 int sh64_setup_dtlb_cache_slot (unsigned long long,int ,unsigned long) ;
 int sh64_teardown_dtlb_cache_slot () ;

__attribute__((used)) static void sh64_dcache_purge_phy_page(unsigned long paddr)
{
 unsigned long long eaddr_start, eaddr, eaddr_end;
 int i;



 eaddr_start = MAGIC_PAGE0_START;
 for (i = 0; i < (1 << CACHE_OC_N_SYNBITS); i++) {
  sh64_setup_dtlb_cache_slot(eaddr_start, get_asid(), paddr);

  eaddr = eaddr_start;
  eaddr_end = eaddr + PAGE_SIZE;
  while (eaddr < eaddr_end) {
   __asm__ __volatile__ ("ocbp %0, 0" : : "r" (eaddr));
   eaddr += L1_CACHE_BYTES;
  }

  sh64_teardown_dtlb_cache_slot();
  eaddr_start += PAGE_SIZE;
 }
}
