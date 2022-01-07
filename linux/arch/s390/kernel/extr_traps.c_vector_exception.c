
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


 int FPE_FLTDIV ;
 int FPE_FLTINV ;
 int FPE_FLTOVF ;
 int FPE_FLTRES ;
 int FPE_FLTUND ;
 int ILL_ILLOPN ;
 int MACHINE_HAS_VX ;
 int SIGFPE ;
 int SIGILL ;
 TYPE_3__* current ;
 int do_trap (struct pt_regs*,int ,int,char*) ;
 int save_fpu_regs () ;

void vector_exception(struct pt_regs *regs)
{
 int si_code, vic;

 if (!MACHINE_HAS_VX) {
  do_trap(regs, SIGILL, ILL_ILLOPN, "illegal operation");
  return;
 }


 save_fpu_regs();
 vic = (current->thread.fpu.fpc & 0xf00) >> 8;
 switch (vic) {
 case 1:
  si_code = FPE_FLTINV;
  break;
 case 2:
  si_code = FPE_FLTDIV;
  break;
 case 3:
  si_code = FPE_FLTOVF;
  break;
 case 4:
  si_code = FPE_FLTUND;
  break;
 case 5:
  si_code = FPE_FLTRES;
  break;
 default:
  si_code = 0;
 }
 do_trap(regs, SIGFPE, si_code, "vector exception");
}
