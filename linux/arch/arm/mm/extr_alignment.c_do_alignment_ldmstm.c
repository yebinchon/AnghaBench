
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {unsigned int ARM_pc; unsigned long* uregs; } ;


 scalar_t__ LDM_S_BIT (int ) ;
 scalar_t__ LDST_L_BIT (int ) ;
 scalar_t__ LDST_P_EQ_U (int ) ;
 int LDST_U_BIT (int ) ;
 scalar_t__ LDST_W_BIT (int ) ;
 int REGMASK_BITS (int ) ;
 unsigned int RN_BITS (int ) ;
 int TYPE_DONE ;
 int TYPE_ERROR ;
 int TYPE_FAULT ;
 int ai_multi ;
 int get32_unaligned_check (unsigned int,unsigned long) ;
 int get32t_unaligned_check (unsigned int,unsigned long) ;
 int hweight16 (int) ;
 int instruction_pointer (struct pt_regs*) ;
 int pr_err (char*,...) ;
 int put32_unaligned_check (unsigned int,unsigned long) ;
 int put32t_unaligned_check (unsigned int,unsigned long) ;
 int show_regs (struct pt_regs*) ;
 int uaccess_restore (unsigned int) ;
 unsigned int uaccess_save_and_enable () ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int
do_alignment_ldmstm(unsigned long addr, u32 instr, struct pt_regs *regs)
{
 unsigned int rd, rn, correction, nr_regs, regbits;
 unsigned long eaddr, newaddr;

 if (LDM_S_BIT(instr))
  goto bad;

 correction = 4;
 regs->ARM_pc += correction;

 ai_multi += 1;


 nr_regs = hweight16(REGMASK_BITS(instr)) * 4;

 rn = RN_BITS(instr);
 newaddr = eaddr = regs->uregs[rn];

 if (!LDST_U_BIT(instr))
  nr_regs = -nr_regs;
 newaddr += nr_regs;
 if (!LDST_U_BIT(instr))
  eaddr = newaddr;

 if (LDST_P_EQ_U(instr))
  eaddr += 4;
 if (addr != eaddr) {
  pr_err("LDMSTM: PC = %08lx, instr = %08x, "
   "addr = %08lx, eaddr = %08lx\n",
    instruction_pointer(regs), instr, addr, eaddr);
  show_regs(regs);
 }


 if (user_mode(regs)) {
  unsigned int __ua_flags = uaccess_save_and_enable();
  for (regbits = REGMASK_BITS(instr), rd = 0; regbits;
       regbits >>= 1, rd += 1)
   if (regbits & 1) {
    if (LDST_L_BIT(instr)) {
     unsigned int val;
     get32t_unaligned_check(val, eaddr);
     regs->uregs[rd] = val;
    } else
     put32t_unaligned_check(regs->uregs[rd], eaddr);
    eaddr += 4;
   }
  uaccess_restore(__ua_flags);
 } else {
  for (regbits = REGMASK_BITS(instr), rd = 0; regbits;
       regbits >>= 1, rd += 1)
   if (regbits & 1) {
    if (LDST_L_BIT(instr)) {
     unsigned int val;
     get32_unaligned_check(val, eaddr);
     regs->uregs[rd] = val;
    } else
     put32_unaligned_check(regs->uregs[rd], eaddr);
    eaddr += 4;
   }
 }

 if (LDST_W_BIT(instr))
  regs->uregs[rn] = newaddr;
 if (!LDST_L_BIT(instr) || !(REGMASK_BITS(instr) & (1 << 15)))
  regs->ARM_pc -= correction;
 return TYPE_DONE;

fault:
 regs->ARM_pc -= correction;
 return TYPE_FAULT;

bad:
 pr_err("Alignment trap: not handling ldm with s-bit set\n");
 return TYPE_ERROR;
}
