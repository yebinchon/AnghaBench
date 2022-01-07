
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int maybe_flush_windows (unsigned int,unsigned int,unsigned int) ;
 unsigned long safe_fetch_reg (unsigned int,struct pt_regs*) ;
 unsigned long sign_extend_imm13 (unsigned int) ;

unsigned long safe_compute_effective_address(struct pt_regs *regs,
          unsigned int insn)
{
 unsigned int rs1 = (insn >> 14) & 0x1f;
 unsigned int rs2 = insn & 0x1f;
 unsigned int rd = (insn >> 25) & 0x1f;

 if(insn & 0x2000) {
  maybe_flush_windows(rs1, 0, rd);
  return (safe_fetch_reg(rs1, regs) + sign_extend_imm13(insn));
 } else {
  maybe_flush_windows(rs1, rs2, rd);
  return (safe_fetch_reg(rs1, regs) + safe_fetch_reg(rs2, regs));
 }
}
