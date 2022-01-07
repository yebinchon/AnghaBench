
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {scalar_t__* regs; } ;


 size_t MIPSInst_RD (int ) ;
 size_t MIPSInst_RS (int ) ;
 size_t MIPSInst_RT (int ) ;
 int MIPS_R2_STATS (int ) ;
 int movs ;

__attribute__((used)) static int movn_func(struct pt_regs *regs, u32 ir)
{
 if (((regs->regs[MIPSInst_RT(ir)]) != 0) && MIPSInst_RD(ir))
  regs->regs[MIPSInst_RD(ir)] = regs->regs[MIPSInst_RS(ir)];
 MIPS_R2_STATS(movs);

 return 0;
}
