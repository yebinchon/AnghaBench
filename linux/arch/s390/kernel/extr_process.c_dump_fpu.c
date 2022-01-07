
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_8__ {int fprs; scalar_t__ pad; int fpc; } ;
typedef TYPE_3__ s390_fp_regs ;
typedef int freg_t ;
struct TYPE_6__ {int fprs; int vxrs; int fpc; } ;
struct TYPE_7__ {TYPE_1__ fpu; } ;
struct TYPE_9__ {TYPE_2__ thread; } ;


 scalar_t__ MACHINE_HAS_VX ;
 int convert_vx_to_fp (int *,int ) ;
 TYPE_5__* current ;
 int memcpy (int *,int ,int) ;
 int save_fpu_regs () ;

int dump_fpu (struct pt_regs * regs, s390_fp_regs *fpregs)
{
 save_fpu_regs();
 fpregs->fpc = current->thread.fpu.fpc;
 fpregs->pad = 0;
 if (MACHINE_HAS_VX)
  convert_vx_to_fp((freg_t *)&fpregs->fprs,
     current->thread.fpu.vxrs);
 else
  memcpy(&fpregs->fprs, current->thread.fpu.fprs,
         sizeof(fpregs->fprs));
 return 1;
}
