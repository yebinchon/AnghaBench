
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union offset_union {unsigned long un; } ;
typedef int u32 ;
struct pt_regs {unsigned long* uregs; } ;


 int LDST_P_BIT (int ) ;
 int LDST_U_BIT (int ) ;
 scalar_t__ LDST_W_BIT (int ) ;
 size_t RN_BITS (int ) ;

__attribute__((used)) static void
do_alignment_finish_ldst(unsigned long addr, u32 instr, struct pt_regs *regs, union offset_union offset)
{
 if (!LDST_U_BIT(instr))
  offset.un = -offset.un;

 if (!LDST_P_BIT(instr))
  addr += offset.un;

 if (!LDST_P_BIT(instr) || LDST_W_BIT(instr))
  regs->uregs[RN_BITS(instr)] = addr;
}
