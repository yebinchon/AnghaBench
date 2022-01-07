
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tstate; } ;


 int TIF_32BIT ;
 int TSTATE_PRIV ;
 unsigned long fetch_reg (unsigned int,struct pt_regs*) ;
 int maybe_flush_windows (unsigned int,unsigned int,unsigned int,int) ;
 unsigned long sign_extend_imm13 (unsigned int) ;
 scalar_t__ test_thread_flag (int ) ;

unsigned long compute_effective_address(struct pt_regs *regs,
     unsigned int insn, unsigned int rd)
{
 int from_kernel = (regs->tstate & TSTATE_PRIV) != 0;
 unsigned int rs1 = (insn >> 14) & 0x1f;
 unsigned int rs2 = insn & 0x1f;
 unsigned long addr;

 if (insn & 0x2000) {
  maybe_flush_windows(rs1, 0, rd, from_kernel);
  addr = (fetch_reg(rs1, regs) + sign_extend_imm13(insn));
 } else {
  maybe_flush_windows(rs1, rs2, rd, from_kernel);
  addr = (fetch_reg(rs1, regs) + fetch_reg(rs2, regs));
 }

 if (!from_kernel && test_thread_flag(TIF_32BIT))
  addr &= 0xffffffff;

 return addr;
}
