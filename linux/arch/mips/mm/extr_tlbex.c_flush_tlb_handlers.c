
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ handle_tlbl ;
 scalar_t__ handle_tlbl_end ;
 scalar_t__ handle_tlbm ;
 scalar_t__ handle_tlbm_end ;
 scalar_t__ handle_tlbs ;
 scalar_t__ handle_tlbs_end ;
 int local_flush_icache_range (unsigned long,unsigned long) ;
 scalar_t__ tlbmiss_handler_setup_pgd ;
 scalar_t__ tlbmiss_handler_setup_pgd_end ;

__attribute__((used)) static void flush_tlb_handlers(void)
{
 local_flush_icache_range((unsigned long)handle_tlbl,
      (unsigned long)handle_tlbl_end);
 local_flush_icache_range((unsigned long)handle_tlbs,
      (unsigned long)handle_tlbs_end);
 local_flush_icache_range((unsigned long)handle_tlbm,
      (unsigned long)handle_tlbm_end);
 local_flush_icache_range((unsigned long)tlbmiss_handler_setup_pgd,
      (unsigned long)tlbmiss_handler_setup_pgd_end);
}
