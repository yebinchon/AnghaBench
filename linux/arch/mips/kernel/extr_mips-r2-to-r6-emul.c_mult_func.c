
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int* regs; int lo; int hi; } ;
typedef int s64 ;
typedef int s32 ;


 size_t MIPSInst_RS (int ) ;
 size_t MIPSInst_RT (int ) ;
 int MIPS_R2_STATS (int ) ;
 int muls ;

__attribute__((used)) static int mult_func(struct pt_regs *regs, u32 ir)
{
 s64 res;
 s32 rt, rs;

 rt = regs->regs[MIPSInst_RT(ir)];
 rs = regs->regs[MIPSInst_RS(ir)];
 res = (s64)rt * (s64)rs;

 rs = res;
 regs->lo = (s64)rs;
 rt = res >> 32;
 res = (s64)rt;
 regs->hi = res;

 MIPS_R2_STATS(muls);

 return 0;
}
