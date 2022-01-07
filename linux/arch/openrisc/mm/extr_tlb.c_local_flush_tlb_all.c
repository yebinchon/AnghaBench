
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NUM_ITLB_SETS ;
 int SPR_DTLBMR_BASE (int ) ;
 int SPR_ITLBMR_BASE (int ) ;
 int mtspr_off (int ,int,int ) ;

void local_flush_tlb_all(void)
{
 int i;
 unsigned long num_tlb_sets;



 num_tlb_sets = NUM_ITLB_SETS;

 for (i = 0; i < num_tlb_sets; i++) {
  mtspr_off(SPR_DTLBMR_BASE(0), i, 0);
  mtspr_off(SPR_ITLBMR_BASE(0), i, 0);
 }
}
