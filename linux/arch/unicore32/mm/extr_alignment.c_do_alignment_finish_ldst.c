
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union offset_union {unsigned long un; } ;
struct pt_regs {unsigned long* uregs; } ;


 int LDST_P_BIT (unsigned long) ;
 int LDST_U_BIT (unsigned long) ;
 scalar_t__ LDST_W_BIT (unsigned long) ;
 size_t RN_BITS (unsigned long) ;

__attribute__((used)) static void
do_alignment_finish_ldst(unsigned long addr, unsigned long instr,
    struct pt_regs *regs, union offset_union offset)
{
 if (!LDST_U_BIT(instr))
  offset.un = -offset.un;

 if (!LDST_P_BIT(instr))
  addr += offset.un;

 if (!LDST_P_BIT(instr) || LDST_W_BIT(instr))
  regs->uregs[RN_BITS(instr)] = addr;
}
