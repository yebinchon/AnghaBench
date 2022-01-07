
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int* regs; void* hi; void* lo; } ;
typedef void* s64 ;


 size_t MIPSInst_RS (int) ;
 size_t MIPSInst_RT (int) ;
 int MIPS_R2_STATS (int ) ;
 int divs ;

__attribute__((used)) static int divu_func(struct pt_regs *regs, u32 ir)
{
 u32 rt, rs;

 rt = regs->regs[MIPSInst_RT(ir)];
 rs = regs->regs[MIPSInst_RS(ir)];

 regs->lo = (s64)(rs / rt);
 regs->hi = (s64)(rs % rt);

 MIPS_R2_STATS(divs);

 return 0;
}
