
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int ARC_REG_TLBCOMMAND ;
 int ARC_REG_TLBPD1 ;
 int TLBGetIndex ;
 int TLBWrite ;
 unsigned int TLB_LKUP_ERR ;
 scalar_t__ likely (unsigned int) ;
 unsigned int tlb_entry_lkup (unsigned int) ;
 int write_aux_reg (int ,int ) ;

__attribute__((used)) static void tlb_entry_insert(unsigned int pd0, pte_t pd1)
{
 unsigned int idx;





 idx = tlb_entry_lkup(pd0);







 if (likely(idx & TLB_LKUP_ERR))
  write_aux_reg(ARC_REG_TLBCOMMAND, TLBGetIndex);


 write_aux_reg(ARC_REG_TLBPD1, pd1);






 write_aux_reg(ARC_REG_TLBCOMMAND, TLBWrite);
}
