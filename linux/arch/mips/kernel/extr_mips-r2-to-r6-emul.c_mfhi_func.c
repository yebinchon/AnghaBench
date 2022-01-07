
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int hi; int * regs; } ;


 size_t MIPSInst_RD (int ) ;
 int MIPS_R2_STATS (int ) ;
 int hilo ;

__attribute__((used)) static int mfhi_func(struct pt_regs *regs, u32 ir)
{
 if (MIPSInst_RD(ir))
  regs->regs[MIPSInst_RD(ir)] = regs->hi;

 MIPS_R2_STATS(hilo);

 return 0;
}
