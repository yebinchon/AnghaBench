
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pt_regs {int * regs; } ;
struct TYPE_4__ {int fcr31; } ;
struct TYPE_5__ {TYPE_1__ fpu; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 size_t MIPSInst_RD (int) ;
 size_t MIPSInst_RS (int) ;
 int MIPSInst_RT (int) ;
 int MIPS_R2_STATS (int ) ;
 TYPE_3__* current ;
 int* fpucondbit ;
 int movs ;

__attribute__((used)) static int movt_func(struct pt_regs *regs, u32 ir)
{
 u32 csr;
 u32 cond;

 csr = current->thread.fpu.fcr31;
 cond = fpucondbit[MIPSInst_RT(ir) >> 2];

 if (((csr & cond) != 0) && MIPSInst_RD(ir))
  regs->regs[MIPSInst_RD(ir)] = regs->regs[MIPSInst_RS(ir)];

 MIPS_R2_STATS(movs);

 return 0;
}
