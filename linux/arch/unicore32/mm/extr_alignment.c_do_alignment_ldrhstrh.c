
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* uregs; } ;


 scalar_t__ LDST_L_BIT (unsigned long) ;
 size_t RD_BITS (unsigned long) ;
 size_t RM_BITS (unsigned long) ;
 int TYPE_FAULT ;
 int TYPE_LDST ;
 int TYPE_SWAP ;
 int get16_unaligned_check (unsigned long,unsigned long) ;
 int get32_unaligned_check (unsigned long,unsigned long) ;
 int put16_unaligned_check (unsigned long,unsigned long) ;
 int put32_unaligned_check (unsigned long,unsigned long) ;

__attribute__((used)) static int
do_alignment_ldrhstrh(unsigned long addr, unsigned long instr,
        struct pt_regs *regs)
{
 unsigned int rd = RD_BITS(instr);


 if ((instr & 0x4b003fe0) == 0x40000120)
  goto swp;

 if (LDST_L_BIT(instr)) {
  unsigned long val;
  get16_unaligned_check(val, addr);


  if (instr & 0x80)
   val = (signed long)((signed short)val);

  regs->uregs[rd] = val;
 } else
  put16_unaligned_check(regs->uregs[rd], addr);

 return TYPE_LDST;

swp:


 get32_unaligned_check(regs->uregs[RD_BITS(instr)], addr);
 put32_unaligned_check(regs->uregs[RM_BITS(instr)], addr);
 return TYPE_SWAP;

fault:
 return TYPE_FAULT;
}
