
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_TLBCOMMAND ;
 int ARC_REG_TLBINDEX ;
 int ARC_REG_TLBPD0 ;
 unsigned long TLBProbe ;
 unsigned int read_aux_reg (int ) ;
 int write_aux_reg (int ,unsigned long) ;

__attribute__((used)) static inline unsigned int tlb_entry_lkup(unsigned long vaddr_n_asid)
{
 unsigned int idx;

 write_aux_reg(ARC_REG_TLBPD0, vaddr_n_asid);

 write_aux_reg(ARC_REG_TLBCOMMAND, TLBProbe);
 idx = read_aux_reg(ARC_REG_TLBINDEX);

 return idx;
}
