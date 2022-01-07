
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct switch_stack {int dummy; } ;
struct pt_regs {int cr_ipsr; } ;
struct ia64_fpreg {int dummy; } ;
struct TYPE_4__ {struct ia64_fpreg* fph; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int DPRINT (char*,unsigned long,scalar_t__) ;
 scalar_t__ FR_IN_SW (unsigned long) ;
 scalar_t__ FR_OFFS (unsigned long) ;
 unsigned long IA64_FIRST_ROTATING_FR ;
 int IA64_PSR_MFL ;
 TYPE_2__* current ;
 size_t fph_index (struct pt_regs*,unsigned long) ;
 int ia64_sync_fph (TYPE_2__*) ;

__attribute__((used)) static void
setfpreg (unsigned long regnum, struct ia64_fpreg *fpval, struct pt_regs *regs)
{
 struct switch_stack *sw = (struct switch_stack *)regs - 1;
 unsigned long addr;
 if (regnum >= IA64_FIRST_ROTATING_FR) {
  ia64_sync_fph(current);
  current->thread.fph[fph_index(regs, regnum)] = *fpval;
 } else {



  if (FR_IN_SW(regnum)) {
   addr = (unsigned long)sw;
  } else {
   addr = (unsigned long)regs;
  }

  DPRINT("tmp_base=%lx offset=%d\n", addr, FR_OFFS(regnum));

  addr += FR_OFFS(regnum);
  *(struct ia64_fpreg *)addr = *fpval;







  regs->cr_ipsr |= IA64_PSR_MFL;
 }
}
