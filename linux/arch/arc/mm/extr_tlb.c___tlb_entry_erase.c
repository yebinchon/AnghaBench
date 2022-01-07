
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_TLBCOMMAND ;
 int ARC_REG_TLBPD0 ;
 int ARC_REG_TLBPD1 ;
 int ARC_REG_TLBPD1HI ;
 int TLBWrite ;
 scalar_t__ is_pae40_enabled () ;
 int write_aux_reg (int ,int ) ;

__attribute__((used)) static inline void __tlb_entry_erase(void)
{
 write_aux_reg(ARC_REG_TLBPD1, 0);

 if (is_pae40_enabled())
  write_aux_reg(ARC_REG_TLBPD1HI, 0);

 write_aux_reg(ARC_REG_TLBPD0, 0);
 write_aux_reg(ARC_REG_TLBCOMMAND, TLBWrite);
}
