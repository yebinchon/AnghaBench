
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {int fpc; } ;
struct TYPE_5__ {TYPE_1__ fpu; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 int FPC_DXC_MASK ;
 int ILL_ILLOPN ;
 int SIGILL ;
 TYPE_3__* current ;
 int do_fp_trap (struct pt_regs*,int) ;
 int do_trap (struct pt_regs*,int ,int ,char*) ;
 int save_fpu_regs () ;

void data_exception(struct pt_regs *regs)
{
 save_fpu_regs();
 if (current->thread.fpu.fpc & FPC_DXC_MASK)
  do_fp_trap(regs, current->thread.fpu.fpc);
 else
  do_trap(regs, SIGILL, ILL_ILLOPN, "data exception");
}
