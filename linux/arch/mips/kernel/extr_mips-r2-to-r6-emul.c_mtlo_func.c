
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int * regs; int lo; } ;


 size_t MIPSInst_RS (int ) ;
 int MIPS_R2_STATS (int ) ;
 int hilo ;

__attribute__((used)) static int mtlo_func(struct pt_regs *regs, u32 ir)
{
 regs->lo = regs->regs[MIPSInst_RS(ir)];

 MIPS_R2_STATS(hilo);

 return 0;
}
