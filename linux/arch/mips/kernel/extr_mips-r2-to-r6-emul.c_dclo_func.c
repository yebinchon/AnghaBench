
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int * regs; } ;


 int CONFIG_32BIT ;
 scalar_t__ IS_ENABLED (int ) ;
 size_t MIPSInst_RD (int ) ;
 size_t MIPSInst_RS (int ) ;
 int MIPS_R2_STATS (int ) ;
 int SIGILL ;
 int bops ;

__attribute__((used)) static int dclo_func(struct pt_regs *regs, u32 ir)
{
 u64 res;
 u64 rs;

 if (IS_ENABLED(CONFIG_32BIT))
  return SIGILL;

 if (!MIPSInst_RD(ir))
  return 0;

 rs = regs->regs[MIPSInst_RS(ir)];
 __asm__ __volatile__("dclo %0, %1" : "=r"(res) : "r"(rs));
 regs->regs[MIPSInst_RD(ir)] = res;

 MIPS_R2_STATS(bops);

 return 0;
}
